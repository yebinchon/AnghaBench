
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct bttv_sub_driver {int wanted; } ;


 int dev_name (struct device*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int) ;
 struct bttv_sub_driver* to_bttv_sub_drv (struct device_driver*) ;

__attribute__((used)) static int bttv_sub_bus_match(struct device *dev, struct device_driver *drv)
{
 struct bttv_sub_driver *sub = to_bttv_sub_drv(drv);
 int len = strlen(sub->wanted);

 if (0 == strncmp(dev_name(dev), sub->wanted, len))
  return 1;
 return 0;
}
