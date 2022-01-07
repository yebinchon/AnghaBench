
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* driver; int kobj; } ;
struct TYPE_10__ {TYPE_6__ dev; struct mii_bus* bus; } ;
struct phy_device {TYPE_2__ mdio; int * phylink; struct net_device* attached_dev; scalar_t__ sysfs_links; } ;
struct TYPE_13__ {TYPE_4__* parent; int kobj; } ;
struct net_device {TYPE_5__ dev; int * phydev; } ;
struct module {int dummy; } ;
struct mii_bus {struct module* owner; } ;
struct TYPE_15__ {int attr; } ;
struct TYPE_12__ {TYPE_3__* driver; } ;
struct TYPE_11__ {struct module* owner; } ;
struct TYPE_9__ {struct module* owner; } ;


 TYPE_8__ dev_attr_phy_standalone ;
 int device_release_driver (TYPE_6__*) ;
 int module_put (struct module*) ;
 int phy_device_reset (struct phy_device*,int) ;
 scalar_t__ phy_driver_is_genphy (struct phy_device*) ;
 scalar_t__ phy_driver_is_genphy_10g (struct phy_device*) ;
 int phy_led_triggers_unregister (struct phy_device*) ;
 int phy_suspend (struct phy_device*) ;
 int put_device (TYPE_6__*) ;
 int sysfs_remove_file (int *,int *) ;
 int sysfs_remove_link (int *,char*) ;

void phy_detach(struct phy_device *phydev)
{
 struct net_device *dev = phydev->attached_dev;
 struct module *ndev_owner = ((void*)0);
 struct mii_bus *bus;

 if (phydev->sysfs_links) {
  if (dev)
   sysfs_remove_link(&dev->dev.kobj, "phydev");
  sysfs_remove_link(&phydev->mdio.dev.kobj, "attached_dev");
 }

 if (!phydev->attached_dev)
  sysfs_remove_file(&phydev->mdio.dev.kobj,
      &dev_attr_phy_standalone.attr);

 phy_suspend(phydev);
 if (dev) {
  phydev->attached_dev->phydev = ((void*)0);
  phydev->attached_dev = ((void*)0);
 }
 phydev->phylink = ((void*)0);

 phy_led_triggers_unregister(phydev);

 module_put(phydev->mdio.dev.driver->owner);






 if (phy_driver_is_genphy(phydev) ||
     phy_driver_is_genphy_10g(phydev))
  device_release_driver(&phydev->mdio.dev);





 bus = phydev->mdio.bus;

 put_device(&phydev->mdio.dev);
 if (dev)
  ndev_owner = dev->dev.parent->driver->owner;
 if (ndev_owner != bus->owner)
  module_put(bus->owner);


 phy_device_reset(phydev, 1);
}
