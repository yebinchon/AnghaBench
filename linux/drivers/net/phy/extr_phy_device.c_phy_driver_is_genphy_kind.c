
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_driver* driver; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {int drv; TYPE_1__ mdio; } ;
struct device_driver {int dummy; } ;


 int get_device (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static bool phy_driver_is_genphy_kind(struct phy_device *phydev,
          struct device_driver *driver)
{
 struct device *d = &phydev->mdio.dev;
 bool ret = 0;

 if (!phydev->drv)
  return ret;

 get_device(d);
 ret = d->driver == driver;
 put_device(d);

 return ret;
}
