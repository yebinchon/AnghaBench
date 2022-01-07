
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 char* dev_name (struct device*) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;

void __fimc_vidioc_querycap(struct device *dev, struct v4l2_capability *cap)
{
 strscpy(cap->driver, dev->driver->name, sizeof(cap->driver));
 strscpy(cap->card, dev->driver->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
    "platform:%s", dev_name(dev));
}
