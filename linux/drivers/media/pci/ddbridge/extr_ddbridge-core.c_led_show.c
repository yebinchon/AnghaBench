
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {int leds; } ;
typedef int ssize_t ;


 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t led_show(struct device *device,
   struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 int num = attr->attr.name[3] - 0x30;

 return sprintf(buf, "%d\n", dev->leds & (1 << num) ? 1 : 0);
}
