
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct module {int dummy; } ;
struct TYPE_6__ {int * groups; int * class; int parent; } ;
struct mii_bus {scalar_t__ state; int phy_mask; TYPE_1__ dev; struct phy_device* reset_gpiod; struct mdio_device** mdio_map; int * name; int (* reset ) (struct mii_bus*) ;int reset_delay_us; int id; int mdio_lock; int parent; struct module* owner; int * write; int * read; } ;
struct mdio_device {int (* device_free ) (struct mdio_device*) ;int (* device_remove ) (struct mdio_device*) ;} ;
typedef struct phy_device gpio_desc ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENODEV ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 scalar_t__ MDIOBUS_ALLOCATED ;
 scalar_t__ MDIOBUS_REGISTERED ;
 scalar_t__ MDIOBUS_UNREGISTERED ;
 int PHY_MAX_ADDR ;
 int PTR_ERR (struct phy_device*) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_del (TYPE_1__*) ;
 int device_register (TYPE_1__*) ;
 struct phy_device* devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 int gpiod_set_value_cansleep (struct phy_device*,int) ;
 int mdio_bus_class ;
 int mdiobus_create_device ;
 struct phy_device* mdiobus_scan (struct mii_bus*,int) ;
 int mdiobus_setup_mdiodev_from_board_info (struct mii_bus*,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int *) ;
 int stub1 (struct mii_bus*) ;
 int stub2 (struct mdio_device*) ;
 int stub3 (struct mdio_device*) ;
 int udelay (int ) ;

int __mdiobus_register(struct mii_bus *bus, struct module *owner)
{
 struct mdio_device *mdiodev;
 int i, err;
 struct gpio_desc *gpiod;

 if (((void*)0) == bus || ((void*)0) == bus->name ||
     ((void*)0) == bus->read || ((void*)0) == bus->write)
  return -EINVAL;

 BUG_ON(bus->state != MDIOBUS_ALLOCATED &&
        bus->state != MDIOBUS_UNREGISTERED);

 bus->owner = owner;
 bus->dev.parent = bus->parent;
 bus->dev.class = &mdio_bus_class;
 bus->dev.groups = ((void*)0);
 dev_set_name(&bus->dev, "%s", bus->id);

 err = device_register(&bus->dev);
 if (err) {
  pr_err("mii_bus %s failed to register\n", bus->id);
  return -EINVAL;
 }

 mutex_init(&bus->mdio_lock);


 gpiod = devm_gpiod_get_optional(&bus->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(gpiod)) {
  dev_err(&bus->dev, "mii_bus %s couldn't get reset GPIO\n",
   bus->id);
  device_del(&bus->dev);
  return PTR_ERR(gpiod);
 } else if (gpiod) {
  bus->reset_gpiod = gpiod;

  gpiod_set_value_cansleep(gpiod, 1);
  udelay(bus->reset_delay_us);
  gpiod_set_value_cansleep(gpiod, 0);
 }

 if (bus->reset)
  bus->reset(bus);

 for (i = 0; i < PHY_MAX_ADDR; i++) {
  if ((bus->phy_mask & (1 << i)) == 0) {
   struct phy_device *phydev;

   phydev = mdiobus_scan(bus, i);
   if (IS_ERR(phydev) && (PTR_ERR(phydev) != -ENODEV)) {
    err = PTR_ERR(phydev);
    goto error;
   }
  }
 }

 mdiobus_setup_mdiodev_from_board_info(bus, mdiobus_create_device);

 bus->state = MDIOBUS_REGISTERED;
 pr_info("%s: probed\n", bus->name);
 return 0;

error:
 while (--i >= 0) {
  mdiodev = bus->mdio_map[i];
  if (!mdiodev)
   continue;

  mdiodev->device_remove(mdiodev);
  mdiodev->device_free(mdiodev);
 }


 if (bus->reset_gpiod)
  gpiod_set_value_cansleep(bus->reset_gpiod, 1);

 device_del(&bus->dev);
 return err;
}
