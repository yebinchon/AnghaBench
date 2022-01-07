
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_driver {int (* remove ) (struct mdio_device*) ;} ;
struct TYPE_2__ {struct device_driver* driver; } ;
struct mdio_device {TYPE_1__ dev; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int mdio_device_reset (struct mdio_device*,int) ;
 int stub1 (struct mdio_device*) ;
 struct mdio_device* to_mdio_device (struct device*) ;
 struct mdio_driver* to_mdio_driver (struct device_driver*) ;

__attribute__((used)) static int mdio_remove(struct device *dev)
{
 struct mdio_device *mdiodev = to_mdio_device(dev);
 struct device_driver *drv = mdiodev->dev.driver;
 struct mdio_driver *mdiodrv = to_mdio_driver(drv);

 if (mdiodrv->remove) {
  mdiodrv->remove(mdiodev);


  mdio_device_reset(mdiodev, 1);
 }

 return 0;
}
