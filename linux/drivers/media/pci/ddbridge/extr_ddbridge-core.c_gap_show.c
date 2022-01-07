
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {TYPE_2__* port; } ;
typedef int ssize_t ;
struct TYPE_4__ {int gap; } ;


 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t gap_show(struct device *device,
   struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 int num = attr->attr.name[3] - 0x30;

 return sprintf(buf, "%d\n", dev->port[num].gap);
}
