
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct mdio_driver {TYPE_1__ mdiodrv; } ;
struct mdio_device {int modalias; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 int MDIO_DEVICE_IS_PHY ;
 scalar_t__ strcmp (int ,int ) ;
 struct mdio_device* to_mdio_device (struct device*) ;
 struct mdio_driver* to_mdio_driver (struct device_driver*) ;

int mdio_device_bus_match(struct device *dev, struct device_driver *drv)
{
 struct mdio_device *mdiodev = to_mdio_device(dev);
 struct mdio_driver *mdiodrv = to_mdio_driver(drv);

 if (mdiodrv->mdiodrv.flags & MDIO_DEVICE_IS_PHY)
  return 0;

 return strcmp(mdiodev->modalias, drv->name) == 0;
}
