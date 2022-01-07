
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;


 int EIO ;
 int EPCR_ERRE ;
 int SR_EPCR ;
 int SR_SHARE_TIMEOUT ;
 int netdev_err (int ,char*,char*) ;
 int sr_read_reg (struct usbnet*,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static int wait_phy_eeprom_ready(struct usbnet *dev, int phy)
{
 int i;

 for (i = 0; i < SR_SHARE_TIMEOUT; i++) {
  u8 tmp = 0;
  int ret;

  udelay(1);
  ret = sr_read_reg(dev, SR_EPCR, &tmp);
  if (ret < 0)
   return ret;


  if (!(tmp & EPCR_ERRE))
   return 0;
 }

 netdev_err(dev->net, "%s write timed out!\n", phy ? "phy" : "eeprom");

 return -EIO;
}
