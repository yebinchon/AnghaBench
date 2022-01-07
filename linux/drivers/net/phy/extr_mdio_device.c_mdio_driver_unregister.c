
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_driver_common {int driver; } ;
struct mdio_driver {struct mdio_driver_common mdiodrv; } ;


 int driver_unregister (int *) ;

void mdio_driver_unregister(struct mdio_driver *drv)
{
 struct mdio_driver_common *mdiodrv = &drv->mdiodrv;

 driver_unregister(&mdiodrv->driver);
}
