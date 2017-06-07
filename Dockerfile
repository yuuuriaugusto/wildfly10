FROM centos

RUN yum -y update
RUN yum install -y nano vim net-tools
#RUN yum install -y Wildfly 10.0.0.Final

ADD wildfly-install.sh /bin/bash/wildfly-install.sh
RUN chmor  +x /bin/bash/wildfly-install.sh

EXPOSE 80

CMD ["/bin/bash/wildfly-install.sh"]
