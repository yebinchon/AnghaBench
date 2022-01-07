
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int dev_attr_interference ;
 int device_create_file (struct device*,int *) ;

int b43_sysfs_register(struct b43_wldev *wldev)
{
 struct device *dev = wldev->dev->dev;

 B43_WARN_ON(b43_status(wldev) != B43_STAT_INITIALIZED);

 return device_create_file(dev, &dev_attr_interference);
}
