
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_if_info {int phy_id; } ;
struct usbnet {int net; struct mii_if_info mii; } ;


 int PHY_INT_MASK ;
 int PHY_INT_SRC ;
 int netdev_dbg (int ,char*) ;
 int netdev_warn (int ,char*) ;
 int smsc75xx_mdio_read_nopm (int ,int ,int ) ;
 int smsc75xx_mdio_write_nopm (int ,int ,int ,int) ;

__attribute__((used)) static int smsc75xx_enable_phy_wakeup_interrupts(struct usbnet *dev, u16 mask)
{
 struct mii_if_info *mii = &dev->mii;
 int ret;

 netdev_dbg(dev->net, "enabling PHY wakeup interrupts\n");


 ret = smsc75xx_mdio_read_nopm(dev->net, mii->phy_id, PHY_INT_SRC);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading PHY_INT_SRC\n");
  return ret;
 }


 ret = smsc75xx_mdio_read_nopm(dev->net, mii->phy_id, PHY_INT_MASK);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading PHY_INT_MASK\n");
  return ret;
 }

 ret |= mask;

 smsc75xx_mdio_write_nopm(dev->net, mii->phy_id, PHY_INT_MASK, ret);

 return 0;
}
