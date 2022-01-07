
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int class; int vendor; int device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sdio_func *func = dev_to_sdio_func (dev);

 return sprintf(buf, "sdio:c%02Xv%04Xd%04X\n",
   func->class, func->vendor, func->device);
}
