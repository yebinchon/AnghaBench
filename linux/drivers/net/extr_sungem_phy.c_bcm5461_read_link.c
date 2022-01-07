
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_phy {int duplex; int speed; } ;


 int BCM5461_FIBER_DUPLEX ;
 int BCM5461_MODE_MASK ;
 int BCM54XX_COPPER ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int MII_NCONFIG ;
 int SPEED_1000 ;
 int bcm54xx_read_link (struct mii_phy*) ;
 int sungem_phy_read (struct mii_phy*,int ) ;
 int sungem_phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm5461_read_link(struct mii_phy* phy)
{
 u32 phy_reg;
 int mode;


 sungem_phy_write(phy, MII_NCONFIG, 0x7c00);
 phy_reg = sungem_phy_read(phy, MII_NCONFIG);

 mode = (phy_reg & BCM5461_MODE_MASK ) >> 1;

 if ( mode == BCM54XX_COPPER) {
  return bcm54xx_read_link(phy);
 }

 phy->speed = SPEED_1000;


 sungem_phy_write(phy, MII_NCONFIG, 0x7000);
 phy_reg = sungem_phy_read(phy, MII_NCONFIG);

 if (phy_reg & BCM5461_FIBER_DUPLEX)
  phy->duplex |= DUPLEX_FULL;
 else
  phy->duplex |= DUPLEX_HALF;

 return 0;
}
