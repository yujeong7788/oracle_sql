--1일차 주석
/*
    주석공간
    명령어에 영향을 주지 않음
*/

-- 테이블 스페이스 생성
CREATE TABLESPACE myts
DATAFILE '/u01/app/oracle/oradata/XE/myts.dbf'
SIZE 100M AUTOEXTEND ON NEXT 5M;

-- 유저 생성
CREATE USER java IDENTIFIED BY oracle
DEFAULT TABLESPACE myts
TEMPORARY TABLESPACE temp;

--유저명 java 비밀번호 oracle

--권한설정(접속과 기본적인 생성 권한)
GRANT RESOURCE, CONNECT TO java;