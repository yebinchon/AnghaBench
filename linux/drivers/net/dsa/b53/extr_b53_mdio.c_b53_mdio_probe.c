
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mdio_device {scalar_t__ addr; int dev; TYPE_1__* bus; } ;
struct b53_device {int current_page; TYPE_1__* bus; } ;
struct TYPE_3__ {int name; } ;


 int B53_BRCM_OUI_1 ;
 int B53_BRCM_OUI_2 ;
 int B53_BRCM_OUI_3 ;
 int B53_BRCM_OUI_4 ;
 scalar_t__ BRCM_PSEUDO_PHY_ADDR ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int b53_mdio_ops ;
 struct b53_device* b53_switch_alloc (int *,int *,TYPE_1__*) ;
 int b53_switch_register (struct b53_device*) ;
 int dev_err (int *,char*,int) ;
 int dev_set_drvdata (int *,struct b53_device*) ;
 int mdiobus_read (TYPE_1__*,int ,int) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int b53_mdio_probe(struct mdio_device *mdiodev)
{
 struct b53_device *dev;
 u32 phy_id;
 int ret;




 if (mdiodev->addr != BRCM_PSEUDO_PHY_ADDR && mdiodev->addr != 0) {
  dev_err(&mdiodev->dev, "leaving address %d to PHY\n",
   mdiodev->addr);
  return -ENODEV;
 }


 phy_id = mdiobus_read(mdiodev->bus, 0, 2) << 16;
 phy_id |= mdiobus_read(mdiodev->bus, 0, 3);





 if ((phy_id & 0xfffffc00) != B53_BRCM_OUI_1 &&
     (phy_id & 0xfffffc00) != B53_BRCM_OUI_2 &&
     (phy_id & 0xfffffc00) != B53_BRCM_OUI_3 &&
     (phy_id & 0xfffffc00) != B53_BRCM_OUI_4) {
  dev_err(&mdiodev->dev, "Unsupported device: 0x%08x\n", phy_id);
  return -ENODEV;
 }
 if (of_machine_is_compatible("brcm,bcm7445d0") &&
     strcmp(mdiodev->bus->name, "sf2 slave mii"))
  return -EPROBE_DEFER;

 dev = b53_switch_alloc(&mdiodev->dev, &b53_mdio_ops, mdiodev->bus);
 if (!dev)
  return -ENOMEM;


 dev->current_page = 0xff;
 dev->bus = mdiodev->bus;

 dev_set_drvdata(&mdiodev->dev, dev);

 ret = b53_switch_register(dev);
 if (ret) {
  dev_err(&mdiodev->dev, "failed to register switch: %i\n", ret);
  return ret;
 }

 return ret;
}
