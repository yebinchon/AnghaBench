
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dev_attr_interference ;
 int dev_attr_shortpreamble ;
 int device_remove_file (struct device*,int *) ;

void b43legacy_sysfs_unregister(struct b43legacy_wldev *wldev)
{
 struct device *dev = wldev->dev->dev;

 device_remove_file(dev, &dev_attr_shortpreamble);
 device_remove_file(dev, &dev_attr_interference);
}
