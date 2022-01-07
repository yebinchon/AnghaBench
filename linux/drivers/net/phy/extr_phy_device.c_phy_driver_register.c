
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct module* owner; int remove; int probe; int * bus; int name; } ;
struct TYPE_3__ {TYPE_2__ driver; int flags; } ;
struct phy_driver {int name; TYPE_1__ mdiodrv; scalar_t__ get_features; scalar_t__ features; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int MDIO_DEVICE_IS_PHY ;
 scalar_t__ WARN_ON (int) ;
 int driver_register (TYPE_2__*) ;
 int mdio_bus_type ;
 int phy_probe ;
 int phy_remove ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,...) ;

int phy_driver_register(struct phy_driver *new_driver, struct module *owner)
{
 int retval;




 if (WARN_ON(new_driver->features && new_driver->get_features)) {
  pr_err("%s: features and get_features must not both be set\n",
         new_driver->name);
  return -EINVAL;
 }

 new_driver->mdiodrv.flags |= MDIO_DEVICE_IS_PHY;
 new_driver->mdiodrv.driver.name = new_driver->name;
 new_driver->mdiodrv.driver.bus = &mdio_bus_type;
 new_driver->mdiodrv.driver.probe = phy_probe;
 new_driver->mdiodrv.driver.remove = phy_remove;
 new_driver->mdiodrv.driver.owner = owner;

 retval = driver_register(&new_driver->mdiodrv.driver);
 if (retval) {
  pr_err("%s: Error %d in registering driver\n",
         new_driver->name, retval);

  return retval;
 }

 pr_debug("%s: Registered new driver\n", new_driver->name);

 return 0;
}
