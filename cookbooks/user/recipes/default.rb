#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "jboss" do
  supports :manage_home => true
  comment "JBoss User"
  home "/opt/jboss"
  shell "/bin/bash"
  password "$1$QmdQoBTT$Mh7VA8qwEAHuSj1m7Sbvn."
end

#Pull data from a template to a file
template "/etc/motd.backup" do
  source "motd.default.erb"
  owner "root"
end

file "/etc/motd.backup2" do
  content "This will be in the file."
end
