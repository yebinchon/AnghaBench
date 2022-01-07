
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int MII_BCM5201_MULTIPHY ;
 int MII_BCM5201_MULTIPHY_SERIALMODE ;
 int MII_BCM5400_AUXCONTROL ;
 int MII_BCM5400_AUXCONTROL_PWR10BASET ;
 int MII_BCM5400_GB_CONTROL ;
 int MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ;
 int __sungem_phy_read (struct mii_phy*,int,int ) ;
 int __sungem_phy_write (struct mii_phy*,int,int ,int ) ;
 int reset_one_mii_phy (struct mii_phy*,int) ;
 int sungem_phy_read (struct mii_phy*,int ) ;
 int sungem_phy_write (struct mii_phy*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bcm5400_init(struct mii_phy* phy)
{
 u16 data;


 data = sungem_phy_read(phy, MII_BCM5400_AUXCONTROL);
 data |= MII_BCM5400_AUXCONTROL_PWR10BASET;
 sungem_phy_write(phy, MII_BCM5400_AUXCONTROL, data);

 data = sungem_phy_read(phy, MII_BCM5400_GB_CONTROL);
 data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
 sungem_phy_write(phy, MII_BCM5400_GB_CONTROL, data);

 udelay(100);


 (void)reset_one_mii_phy(phy, 0x1f);

 data = __sungem_phy_read(phy, 0x1f, MII_BCM5201_MULTIPHY);
 data |= MII_BCM5201_MULTIPHY_SERIALMODE;
 __sungem_phy_write(phy, 0x1f, MII_BCM5201_MULTIPHY, data);

 data = sungem_phy_read(phy, MII_BCM5400_AUXCONTROL);
 data &= ~MII_BCM5400_AUXCONTROL_PWR10BASET;
 sungem_phy_write(phy, MII_BCM5400_AUXCONTROL, data);

 return 0;
}
