
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int add_mux_show (struct device*,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t del_mux_show(struct device *d, struct device_attribute *attr, char *buf)
{
 return add_mux_show(d, attr, buf);
}
