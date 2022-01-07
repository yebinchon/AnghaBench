
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_ops {int blocks_num; } ;
struct c2port_device {struct c2port_ops* ops; } ;
typedef int ssize_t ;


 struct c2port_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t c2port_show_flash_blocks_num(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);
 struct c2port_ops *ops = c2dev->ops;

 return sprintf(buf, "%d\n", ops->blocks_num);
}
