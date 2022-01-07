
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mdio_read ) (int ,int ,int ) ;int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (int ,int ,int ,int) ;int dev; } ;
struct usbnet {int net; TYPE_1__ mii; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_RESET ;
 int EIO ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int PHY_INT_MASK ;
 int PHY_INT_MASK_DEFAULT_ ;
 int PHY_INT_SRC ;
 int SMSC95XX_INTERNAL_PHY_ID ;
 int ifup ;
 int mii_nway_restart (TYPE_1__*) ;
 int msleep (int) ;
 int netdev_warn (int ,char*) ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;
 int smsc95xx_mdio_read (int ,int ,int ) ;
 int smsc95xx_mdio_write (int ,int ,int ,int) ;

__attribute__((used)) static int smsc95xx_phy_initialize(struct usbnet *dev)
{
 int bmcr, ret, timeout = 0;


 dev->mii.dev = dev->net;
 dev->mii.mdio_read = smsc95xx_mdio_read;
 dev->mii.mdio_write = smsc95xx_mdio_write;
 dev->mii.phy_id_mask = 0x1f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.phy_id = SMSC95XX_INTERNAL_PHY_ID;


 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);

 do {
  msleep(10);
  bmcr = smsc95xx_mdio_read(dev->net, dev->mii.phy_id, MII_BMCR);
  timeout++;
 } while ((bmcr & BMCR_RESET) && (timeout < 100));

 if (timeout >= 100) {
  netdev_warn(dev->net, "timeout on PHY Reset");
  return -EIO;
 }

 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
  ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
  ADVERTISE_PAUSE_ASYM);


 ret = smsc95xx_mdio_read(dev->net, dev->mii.phy_id, PHY_INT_SRC);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to read PHY_INT_SRC during init\n");
  return ret;
 }

 smsc95xx_mdio_write(dev->net, dev->mii.phy_id, PHY_INT_MASK,
  PHY_INT_MASK_DEFAULT_);
 mii_nway_restart(&dev->mii);

 netif_dbg(dev, ifup, dev->net, "phy initialised successfully\n");
 return 0;
}
