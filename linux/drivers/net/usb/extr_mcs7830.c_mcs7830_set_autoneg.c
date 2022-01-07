
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MCS7830_MII_ADVERTISE ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int mcs7830_write_phy (struct usbnet*,int ,int) ;

__attribute__((used)) static int mcs7830_set_autoneg(struct usbnet *dev, int ptrUserPhyMode)
{
 int ret;

 ret = mcs7830_write_phy(dev, MII_ADVERTISE, MCS7830_MII_ADVERTISE);


 if (!ret)
  ret = mcs7830_write_phy(dev, MII_BMCR, 0x0000);

 if (!ret)
  ret = mcs7830_write_phy(dev, MII_BMCR, BMCR_ANENABLE);

 if (!ret)
  ret = mcs7830_write_phy(dev, MII_BMCR,
    BMCR_ANENABLE | BMCR_ANRESTART );
 return ret;
}
