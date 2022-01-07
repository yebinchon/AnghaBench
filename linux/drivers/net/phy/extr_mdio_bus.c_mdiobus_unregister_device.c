
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_device {size_t addr; TYPE_1__* bus; } ;
struct TYPE_2__ {struct mdio_device** mdio_map; } ;


 int EINVAL ;

int mdiobus_unregister_device(struct mdio_device *mdiodev)
{
 if (mdiodev->bus->mdio_map[mdiodev->addr] != mdiodev)
  return -EINVAL;

 mdiodev->bus->mdio_map[mdiodev->addr] = ((void*)0);

 return 0;
}
