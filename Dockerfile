FROM jenkins
MAINTAINER zsx <thinkernel@gmail.com>

# Install plugins
COPY plugins.txt /usr/local/etc/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/local/etc/plugins.txt

# Add gerrit-trigger plugin config file
COPY gerrit-trigger.xml /usr/local/etc/gerrit-trigger.xml

# Add credentials plugin config file
COPY credentials.xml /usr/local/etc/credentials.xml

# Add setup script.
COPY jenkins-setup.sh /usr/local/bin/jenkins-setup.sh
