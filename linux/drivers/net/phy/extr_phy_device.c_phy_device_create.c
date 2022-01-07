
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct phy_c45_device_ids {int* device_ids; int devices_in_package; } ;
struct TYPE_3__ {int * type; int * bus; int * parent; } ;
struct mdio_device {int addr; TYPE_1__ dev; int device_remove; int device_free; int flags; int bus_match; struct mii_bus* bus; } ;
struct phy_device {int duplex; int is_c45; int phy_id; int state_queue; int lock; int state; int irq; struct phy_c45_device_ids c45_ids; int autoneg; int interface; scalar_t__ link; scalar_t__ asym_pause; scalar_t__ pause; scalar_t__ speed; struct mdio_device mdio; } ;
struct mii_bus {int id; int * irq; int dev; } ;


 int ARRAY_SIZE (int*) ;
 int AUTONEG_ENABLE ;
 int ENOMEM ;
 struct phy_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MDIO_DEVICE_FLAG_PHY ;
 int PHY_DOWN ;
 int PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_GMII ;
 int dev_set_name (TYPE_1__*,int ,int ,int) ;
 int device_initialize (TYPE_1__*) ;
 int kfree (struct phy_device*) ;
 struct phy_device* kzalloc (int,int ) ;
 int mdio_bus_phy_type ;
 int mdio_bus_type ;
 int mutex_init (int *) ;
 int phy_bus_match ;
 int phy_mdio_device_free ;
 int phy_mdio_device_remove ;
 int phy_request_driver_module (struct phy_device*,int) ;
 int phy_state_machine ;

struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id,
         bool is_c45,
         struct phy_c45_device_ids *c45_ids)
{
 struct phy_device *dev;
 struct mdio_device *mdiodev;
 int ret = 0;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 mdiodev = &dev->mdio;
 mdiodev->dev.parent = &bus->dev;
 mdiodev->dev.bus = &mdio_bus_type;
 mdiodev->dev.type = &mdio_bus_phy_type;
 mdiodev->bus = bus;
 mdiodev->bus_match = phy_bus_match;
 mdiodev->addr = addr;
 mdiodev->flags = MDIO_DEVICE_FLAG_PHY;
 mdiodev->device_free = phy_mdio_device_free;
 mdiodev->device_remove = phy_mdio_device_remove;

 dev->speed = 0;
 dev->duplex = -1;
 dev->pause = 0;
 dev->asym_pause = 0;
 dev->link = 0;
 dev->interface = PHY_INTERFACE_MODE_GMII;

 dev->autoneg = AUTONEG_ENABLE;

 dev->is_c45 = is_c45;
 dev->phy_id = phy_id;
 if (c45_ids)
  dev->c45_ids = *c45_ids;
 dev->irq = bus->irq[addr];
 dev_set_name(&mdiodev->dev, PHY_ID_FMT, bus->id, addr);

 dev->state = PHY_DOWN;

 mutex_init(&dev->lock);
 INIT_DELAYED_WORK(&dev->state_queue, phy_state_machine);
 if (is_c45 && c45_ids) {
  const int num_ids = ARRAY_SIZE(c45_ids->device_ids);
  int i;

  for (i = 1; i < num_ids; i++) {
   if (!(c45_ids->devices_in_package & (1 << i)))
    continue;

   ret = phy_request_driver_module(dev,
      c45_ids->device_ids[i]);
   if (ret)
    break;
  }
 } else {
  ret = phy_request_driver_module(dev, phy_id);
 }

 if (!ret) {
  device_initialize(&mdiodev->dev);
 } else {
  kfree(dev);
  dev = ERR_PTR(ret);
 }

 return dev;
}
