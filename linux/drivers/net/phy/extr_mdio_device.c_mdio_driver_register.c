
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int remove; int probe; int * bus; } ;
struct mdio_driver_common {TYPE_1__ driver; } ;
struct mdio_driver {struct mdio_driver_common mdiodrv; } ;


 int driver_register (TYPE_1__*) ;
 int mdio_bus_type ;
 int mdio_probe ;
 int mdio_remove ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,int) ;

int mdio_driver_register(struct mdio_driver *drv)
{
 struct mdio_driver_common *mdiodrv = &drv->mdiodrv;
 int retval;

 pr_debug("mdio_driver_register: %s\n", mdiodrv->driver.name);

 mdiodrv->driver.bus = &mdio_bus_type;
 mdiodrv->driver.probe = mdio_probe;
 mdiodrv->driver.remove = mdio_remove;

 retval = driver_register(&mdiodrv->driver);
 if (retval) {
  pr_err("%s: Error %d in registering driver\n",
         mdiodrv->driver.name, retval);

  return retval;
 }

 return 0;
}
