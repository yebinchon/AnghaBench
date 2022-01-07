
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave_attribute {int (* show ) (struct slave*,char*) ;} ;
struct slave {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (struct slave*,char*) ;
 struct slave* to_slave (struct kobject*) ;
 struct slave_attribute* to_slave_attr (struct attribute*) ;

__attribute__((used)) static ssize_t slave_show(struct kobject *kobj,
     struct attribute *attr, char *buf)
{
 struct slave_attribute *slave_attr = to_slave_attr(attr);
 struct slave *slave = to_slave(kobj);

 return slave_attr->show(slave, buf);
}
