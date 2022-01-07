
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {int port_num; } ;
typedef int ssize_t ;


 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ports_show(struct device *device,
     struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);

 return sprintf(buf, "%d\n", dev->port_num);
}
