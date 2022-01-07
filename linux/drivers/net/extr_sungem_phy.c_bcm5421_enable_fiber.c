
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int autoneg; } ;


 int MII_NCONFIG ;
 int sungem_phy_write (struct mii_phy*,int,int) ;

__attribute__((used)) static int bcm5421_enable_fiber(struct mii_phy* phy, int autoneg)
{

 sungem_phy_write(phy, MII_NCONFIG, 0x9020);

 sungem_phy_write(phy, MII_NCONFIG, 0x945f);

 if (!autoneg) {

  sungem_phy_write(phy, MII_NCONFIG, 0xfc01);
  sungem_phy_write(phy, 0x0b, 0x0004);
 }

 phy->autoneg = autoneg;

 return 0;
}
