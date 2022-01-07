
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int autoneg; } ;


 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_NCONFIG ;
 int sungem_phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm5461_enable_fiber(struct mii_phy* phy, int autoneg)
{

 sungem_phy_write(phy, MII_NCONFIG, 0xfc0b);

 if (autoneg) {

  sungem_phy_write(phy, MII_ADVERTISE, 0x01e0);
  sungem_phy_write(phy, MII_BMCR, 0x1140);
 } else {

  sungem_phy_write(phy, MII_BMCR, 0x0140);
 }

 phy->autoneg = autoneg;

 return 0;
}
