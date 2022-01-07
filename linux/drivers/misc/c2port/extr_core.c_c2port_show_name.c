
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {char* name; } ;
typedef int ssize_t ;


 struct c2port_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t c2port_show_name(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", c2dev->name);
}
