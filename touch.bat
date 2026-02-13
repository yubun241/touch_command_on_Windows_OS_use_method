@echo off
if "%~1"=="" (
    echo Usage: touch filename
    exit /b 1
)

set filename=%~1

if not exist %filename% (
    type nul > %filename%
) else (
    copy /b %filename% +,, %filename%
)
