FROM mcr.microsoft.com/windows:latest

RUN powershell -Command \
    Install-Package -Name python3.10 -Force ; \
    Install-Package -Name python3-pip -Force ; \
    Install-Package -Name git -Force

RUN pip install PyYAML

COPY feed.py C:\urs\bin\feed.py

COPY entrypoint.sh C:\entrypoint.sh

ENTRYPOINT ["C:\\entrypoint.sh"]
