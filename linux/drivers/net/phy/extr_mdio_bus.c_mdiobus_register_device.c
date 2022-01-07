
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_device {size_t addr; int flags; TYPE_1__* bus; } ;
struct TYPE_2__ {struct mdio_device** mdio_map; } ;


 int EBUSY ;
 int MDIO_DEVICE_FLAG_PHY ;
 int mdio_device_reset (struct mdio_device*,int) ;
 int mdiobus_register_gpiod (struct mdio_device*) ;
 int mdiobus_register_reset (struct mdio_device*) ;

int mdiobus_register_device(struct mdio_device *mdiodev)
{
 int err;

 if (mdiodev->bus->mdio_map[mdiodev->addr])
  return -EBUSY;

 if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY) {
  err = mdiobus_register_gpiod(mdiodev);
  if (err)
   return err;

  err = mdiobus_register_reset(mdiodev);
  if (err)
   return err;


  mdio_device_reset(mdiodev, 1);
 }

 mdiodev->bus->mdio_map[mdiodev->addr] = mdiodev;

 return 0;
}
