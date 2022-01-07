
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int phy_id; } ;
struct usbnet {int net; struct mii_if_info mii; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int netdev_warn (int ,char*) ;
 int smsc75xx_mdio_read_nopm (int ,int ,int ) ;

__attribute__((used)) static int smsc75xx_link_ok_nopm(struct usbnet *dev)
{
 struct mii_if_info *mii = &dev->mii;
 int ret;


 ret = smsc75xx_mdio_read_nopm(dev->net, mii->phy_id, MII_BMSR);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading MII_BMSR\n");
  return ret;
 }

 ret = smsc75xx_mdio_read_nopm(dev->net, mii->phy_id, MII_BMSR);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading MII_BMSR\n");
  return ret;
 }

 return !!(ret & BMSR_LSTATUS);
}
