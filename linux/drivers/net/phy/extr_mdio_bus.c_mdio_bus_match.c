
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int (* bus_match ) (struct device*,struct device_driver*) ;} ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 int stub1 (struct device*,struct device_driver*) ;
 struct mdio_device* to_mdio_device (struct device*) ;

__attribute__((used)) static int mdio_bus_match(struct device *dev, struct device_driver *drv)
{
 struct mdio_device *mdio = to_mdio_device(dev);

 if (of_driver_match_device(dev, drv))
  return 1;

 if (mdio->bus_match)
  return mdio->bus_match(dev, drv);

 return 0;
}
