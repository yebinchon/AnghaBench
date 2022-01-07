
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int phy_mutex; } ;
typedef int __le16 ;


 int EPAR_PHY_ADR ;
 int EPCR_EPOS ;
 int EPCR_ERPRW ;
 int EPCR_WEP ;
 int SR_EPAR ;
 int SR_EPCR ;
 int SR_EPDR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sr_write (struct usbnet*,int ,int,int *) ;
 int sr_write_reg (struct usbnet*,int ,int) ;
 int wait_phy_eeprom_ready (struct usbnet*,int) ;

__attribute__((used)) static int sr_share_write_word(struct usbnet *dev, int phy, u8 reg,
          __le16 value)
{
 int ret;

 mutex_lock(&dev->phy_mutex);

 ret = sr_write(dev, SR_EPDR, 2, &value);
 if (ret < 0)
  goto out_unlock;

 sr_write_reg(dev, SR_EPAR, phy ? (reg | EPAR_PHY_ADR) : reg);
 sr_write_reg(dev, SR_EPCR, phy ? (EPCR_WEP | EPCR_EPOS | EPCR_ERPRW) :
      (EPCR_WEP | EPCR_ERPRW));

 ret = wait_phy_eeprom_ready(dev, phy);
 if (ret < 0)
  goto out_unlock;

 sr_write_reg(dev, SR_EPCR, 0x0);

out_unlock:
 mutex_unlock(&dev->phy_mutex);
 return ret;
}
