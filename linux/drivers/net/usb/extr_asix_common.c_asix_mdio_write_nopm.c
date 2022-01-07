
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int phy_mutex; int net; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;
typedef int __le16 ;


 int AX_CMD_STATMNGSTS_REG ;
 int AX_CMD_WRITE_MII_REG ;
 int AX_HOST_EN ;
 int ENODEV ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*,int) ;
 int asix_set_hw_mii (struct usbnet*,int) ;
 int asix_set_sw_mii (struct usbnet*,int) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int,int *,int) ;
 int cpu_to_le16 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (int ,char*,int,int,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int usleep_range (int,int) ;

void
asix_mdio_write_nopm(struct net_device *netdev, int phy_id, int loc, int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 res = cpu_to_le16(val);
 u8 smsr;
 int i = 0;
 int ret;

 netdev_dbg(dev->net, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n",
   phy_id, loc, val);

 mutex_lock(&dev->phy_mutex);
 do {
  ret = asix_set_sw_mii(dev, 1);
  if (ret == -ENODEV)
   break;
  usleep_range(1000, 1100);
  ret = asix_read_cmd(dev, AX_CMD_STATMNGSTS_REG,
        0, 0, 1, &smsr, 1);
 } while (!(smsr & AX_HOST_EN) && (i++ < 30) && (ret != -ENODEV));
 if (ret == -ENODEV) {
  mutex_unlock(&dev->phy_mutex);
  return;
 }

 asix_write_cmd(dev, AX_CMD_WRITE_MII_REG, phy_id,
         (__u16)loc, 2, &res, 1);
 asix_set_hw_mii(dev, 1);
 mutex_unlock(&dev->phy_mutex);
}
