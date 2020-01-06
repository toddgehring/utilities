REM Silly .bat file to free up space on EFI partition to allow Windows update
REM to proceed with install with enough space...
@echo off
:start
echo Mounting Drive...
if not exist "y:" (mountvol y: /s)
echo Drive Mounted!
del y:\EFI\Microsoft\Boot\Fonts\*.*
echo Fonts deleted - ready to go!
PAUSE