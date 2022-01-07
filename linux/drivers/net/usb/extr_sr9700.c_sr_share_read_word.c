
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int phy_mutex; int net; } ;
typedef int __le16 ;


 int EPAR_PHY_ADR ;
 int EPCR_EPOS ;
 int EPCR_ERPRR ;
 int SR_EPAR ;
 int SR_EPCR ;
 int SR_EPDR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (int ,char*,int,int,int ,int) ;
 int sr_read (struct usbnet*,int ,int,int *) ;
 int sr_write_reg (struct usbnet*,int ,int) ;
 int wait_phy_eeprom_ready (struct usbnet*,int) ;

__attribute__((used)) static int sr_share_read_word(struct usbnet *dev, int phy, u8 reg,
         __le16 *value)
{
 int ret;

 mutex_lock(&dev->phy_mutex);

 sr_write_reg(dev, SR_EPAR, phy ? (reg | EPAR_PHY_ADR) : reg);
 sr_write_reg(dev, SR_EPCR, phy ? (EPCR_EPOS | EPCR_ERPRR) : EPCR_ERPRR);

 ret = wait_phy_eeprom_ready(dev, phy);
 if (ret < 0)
  goto out_unlock;

 sr_write_reg(dev, SR_EPCR, 0x0);
 ret = sr_read(dev, SR_EPDR, 2, value);

 netdev_dbg(dev->net, "read shared %d 0x%02x returned 0x%04x, %d\n",
     phy, reg, *value, ret);

out_unlock:
 mutex_unlock(&dev->phy_mutex);
 return ret;
}
