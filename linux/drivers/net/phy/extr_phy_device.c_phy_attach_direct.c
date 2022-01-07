
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
struct device {TYPE_6__* driver; int kobj; } ;
struct TYPE_16__ {struct device dev; struct mii_bus* bus; } ;
struct phy_device {int sysfs_links; struct net_device* attached_dev; int state; int interface; int dev_flags; TYPE_5__ mdio; int phy_link_change; scalar_t__ is_c45; } ;
struct TYPE_20__ {TYPE_2__* parent; } ;
struct net_device {struct phy_device* phydev; TYPE_9__ dev; } ;
struct module {int dummy; } ;
struct mii_bus {struct module* owner; } ;
typedef int phy_interface_t ;
struct TYPE_17__ {int (* probe ) (struct device*) ;struct module* owner; } ;
struct TYPE_14__ {TYPE_6__ driver; } ;
struct TYPE_19__ {TYPE_3__ mdiodrv; } ;
struct TYPE_15__ {TYPE_6__ driver; } ;
struct TYPE_18__ {TYPE_4__ mdiodrv; } ;
struct TYPE_13__ {TYPE_1__* driver; } ;
struct TYPE_12__ {struct module* owner; } ;
struct TYPE_11__ {int attr; } ;


 int EBUSY ;
 int EIO ;
 int PHY_READY ;
 TYPE_10__ dev_attr_phy_standalone ;
 int dev_err (TYPE_9__*,char*) ;
 int device_bind_driver (struct device*) ;
 TYPE_8__ genphy_c45_driver ;
 TYPE_7__ genphy_driver ;
 int get_device (struct device*) ;
 int module_put (struct module*) ;
 int netif_carrier_off (struct net_device*) ;
 int phy_detach (struct phy_device*) ;
 int phy_init_hw (struct phy_device*) ;
 int phy_led_triggers_register (struct phy_device*) ;
 int phy_link_change ;
 int phy_resume (struct phy_device*) ;
 int phy_sysfs_create_links (struct phy_device*) ;
 int phydev_err (struct phy_device*,char*) ;
 int put_device (struct device*) ;
 int stub1 (struct device*) ;
 int sysfs_create_file (int *,int *) ;
 int try_module_get (struct module*) ;

int phy_attach_direct(struct net_device *dev, struct phy_device *phydev,
        u32 flags, phy_interface_t interface)
{
 struct mii_bus *bus = phydev->mdio.bus;
 struct device *d = &phydev->mdio.dev;
 struct module *ndev_owner = ((void*)0);
 bool using_genphy = 0;
 int err;






 if (dev)
  ndev_owner = dev->dev.parent->driver->owner;
 if (ndev_owner != bus->owner && !try_module_get(bus->owner)) {
  phydev_err(phydev, "failed to get the bus module\n");
  return -EIO;
 }

 get_device(d);




 if (!d->driver) {
  if (phydev->is_c45)
   d->driver = &genphy_c45_driver.mdiodrv.driver;
  else
   d->driver = &genphy_driver.mdiodrv.driver;

  using_genphy = 1;
 }

 if (!try_module_get(d->driver->owner)) {
  phydev_err(phydev, "failed to get the device driver module\n");
  err = -EIO;
  goto error_put_device;
 }

 if (using_genphy) {
  err = d->driver->probe(d);
  if (err >= 0)
   err = device_bind_driver(d);

  if (err)
   goto error_module_put;
 }

 if (phydev->attached_dev) {
  dev_err(&dev->dev, "PHY already attached\n");
  err = -EBUSY;
  goto error;
 }

 phydev->phy_link_change = phy_link_change;
 if (dev) {
  phydev->attached_dev = dev;
  dev->phydev = phydev;
 }
 phydev->sysfs_links = 0;

 phy_sysfs_create_links(phydev);

 if (!phydev->attached_dev) {
  err = sysfs_create_file(&phydev->mdio.dev.kobj,
     &dev_attr_phy_standalone.attr);
  if (err)
   phydev_err(phydev, "error creating 'phy_standalone' sysfs entry\n");
 }

 phydev->dev_flags = flags;

 phydev->interface = interface;

 phydev->state = PHY_READY;




 if (dev)
  netif_carrier_off(phydev->attached_dev);





 err = phy_init_hw(phydev);
 if (err)
  goto error;

 phy_resume(phydev);
 phy_led_triggers_register(phydev);

 return err;

error:

 phy_detach(phydev);
 return err;

error_module_put:
 module_put(d->driver->owner);
error_put_device:
 put_device(d);
 if (ndev_owner != bus->owner)
  module_put(bus->owner);
 return err;
}
