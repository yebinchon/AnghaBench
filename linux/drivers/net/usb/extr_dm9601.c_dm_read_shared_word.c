
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int phy_mutex; int net; } ;
typedef int __le16 ;


 int DM_SHARED_ADDR ;
 int DM_SHARED_CTRL ;
 int DM_SHARED_DATA ;
 int DM_TIMEOUT ;
 int EIO ;
 int dm_read (struct usbnet*,int ,int,int *) ;
 int dm_read_reg (struct usbnet*,int ,int*) ;
 int dm_write_reg (struct usbnet*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (int ,char*,int,int,int ,int) ;
 int netdev_err (int ,char*,char*) ;
 int udelay (int) ;

__attribute__((used)) static int dm_read_shared_word(struct usbnet *dev, int phy, u8 reg, __le16 *value)
{
 int ret, i;

 mutex_lock(&dev->phy_mutex);

 dm_write_reg(dev, DM_SHARED_ADDR, phy ? (reg | 0x40) : reg);
 dm_write_reg(dev, DM_SHARED_CTRL, phy ? 0xc : 0x4);

 for (i = 0; i < DM_TIMEOUT; i++) {
  u8 tmp = 0;

  udelay(1);
  ret = dm_read_reg(dev, DM_SHARED_CTRL, &tmp);
  if (ret < 0)
   goto out;


  if ((tmp & 1) == 0)
   break;
 }

 if (i == DM_TIMEOUT) {
  netdev_err(dev->net, "%s read timed out!\n", phy ? "phy" : "eeprom");
  ret = -EIO;
  goto out;
 }

 dm_write_reg(dev, DM_SHARED_CTRL, 0x0);
 ret = dm_read(dev, DM_SHARED_DATA, 2, value);

 netdev_dbg(dev->net, "read shared %d 0x%02x returned 0x%04x, %d\n",
     phy, reg, *value, ret);

 out:
 mutex_unlock(&dev->phy_mutex);
 return ret;
}
