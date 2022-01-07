
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_if_info {int phy_id; } ;
struct usbnet {int net; struct mii_if_info mii; } ;


 int EIO ;
 int MII_BMCR ;
 int PMT_CTL ;
 int PMT_CTL_PHY_RST ;
 int netdev_warn (int ,char*,...) ;
 int smsc75xx_link_ok_nopm (struct usbnet*) ;
 int smsc75xx_mdio_write (int ,int ,int ,int) ;
 int smsc75xx_read_reg (struct usbnet*,int ,int*) ;
 int smsc75xx_write_reg (struct usbnet*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int smsc75xx_phy_gig_workaround(struct usbnet *dev)
{
 struct mii_if_info *mii = &dev->mii;
 int ret = 0, timeout = 0;
 u32 buf, link_up = 0;


 smsc75xx_mdio_write(dev->net, mii->phy_id, MII_BMCR, 0x4040);


 do {
  link_up = smsc75xx_link_ok_nopm(dev);
  usleep_range(10000, 20000);
  timeout++;
 } while ((!link_up) && (timeout < 1000));

 if (timeout >= 1000) {
  netdev_warn(dev->net, "Timeout waiting for PHY link up\n");
  return -EIO;
 }


 ret = smsc75xx_read_reg(dev, PMT_CTL, &buf);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to read PMT_CTL: %d\n", ret);
  return ret;
 }

 buf |= PMT_CTL_PHY_RST;

 ret = smsc75xx_write_reg(dev, PMT_CTL, buf);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to write PMT_CTL: %d\n", ret);
  return ret;
 }

 timeout = 0;
 do {
  usleep_range(10000, 20000);
  ret = smsc75xx_read_reg(dev, PMT_CTL, &buf);
  if (ret < 0) {
   netdev_warn(dev->net, "Failed to read PMT_CTL: %d\n",
        ret);
   return ret;
  }
  timeout++;
 } while ((buf & PMT_CTL_PHY_RST) && (timeout < 100));

 if (timeout >= 100) {
  netdev_warn(dev->net, "timeout waiting for PHY Reset\n");
  return -EIO;
 }

 return 0;
}
