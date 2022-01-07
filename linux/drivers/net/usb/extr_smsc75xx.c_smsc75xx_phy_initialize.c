
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mdio_read ) (int ,int ,int ) ;int phy_id_mask; int reg_num_mask; int supports_gmii; int phy_id; int (* mdio_write ) (int ,int ,int ,int) ;int dev; } ;
struct usbnet {int net; TYPE_1__ mii; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_RESET ;
 int EIO ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int PHY_INT_MASK ;
 int PHY_INT_MASK_DEFAULT ;
 int PHY_INT_SRC ;
 int SMSC75XX_INTERNAL_PHY_ID ;
 int ifup ;
 int mii_nway_restart (TYPE_1__*) ;
 int msleep (int) ;
 int netdev_warn (int ,char*) ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;
 int smsc75xx_mdio_read (int ,int ,int ) ;
 int smsc75xx_mdio_write (int ,int ,int ,int) ;
 int smsc75xx_phy_gig_workaround (struct usbnet*) ;

__attribute__((used)) static int smsc75xx_phy_initialize(struct usbnet *dev)
{
 int bmcr, ret, timeout = 0;


 dev->mii.dev = dev->net;
 dev->mii.mdio_read = smsc75xx_mdio_read;
 dev->mii.mdio_write = smsc75xx_mdio_write;
 dev->mii.phy_id_mask = 0x1f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.supports_gmii = 1;
 dev->mii.phy_id = SMSC75XX_INTERNAL_PHY_ID;


 smsc75xx_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);

 do {
  msleep(10);
  bmcr = smsc75xx_mdio_read(dev->net, dev->mii.phy_id, MII_BMCR);
  if (bmcr < 0) {
   netdev_warn(dev->net, "Error reading MII_BMCR\n");
   return bmcr;
  }
  timeout++;
 } while ((bmcr & BMCR_RESET) && (timeout < 100));

 if (timeout >= 100) {
  netdev_warn(dev->net, "timeout on PHY Reset\n");
  return -EIO;
 }


 smsc75xx_phy_gig_workaround(dev);

 smsc75xx_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
  ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
  ADVERTISE_PAUSE_ASYM);
 smsc75xx_mdio_write(dev->net, dev->mii.phy_id, MII_CTRL1000,
  ADVERTISE_1000FULL);


 ret = smsc75xx_mdio_read(dev->net, dev->mii.phy_id, PHY_INT_SRC);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading PHY_INT_SRC\n");
  return ret;
 }

 smsc75xx_mdio_write(dev->net, dev->mii.phy_id, PHY_INT_SRC, 0xffff);

 smsc75xx_mdio_write(dev->net, dev->mii.phy_id, PHY_INT_MASK,
  PHY_INT_MASK_DEFAULT);
 mii_nway_restart(&dev->mii);

 netif_dbg(dev, ifup, dev->net, "phy initialised successfully\n");
 return 0;
}
