
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {scalar_t__ duplex; int pause; int speed; scalar_t__ autoneg; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int LPA_PAUSE ;
 int MII_BCM5400_AUXSTATUS ;
 int MII_BCM5400_AUXSTATUS_LINKMODE_MASK ;
 int MII_BCM5400_AUXSTATUS_LINKMODE_SHIFT ;
 int MII_LPA ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 scalar_t__** phy_BCM5400_link_table ;
 int sungem_phy_read (struct mii_phy*,int ) ;

__attribute__((used)) static int bcm54xx_read_link(struct mii_phy *phy)
{
 int link_mode;
 u16 val;

 if (phy->autoneg) {
      val = sungem_phy_read(phy, MII_BCM5400_AUXSTATUS);
  link_mode = ((val & MII_BCM5400_AUXSTATUS_LINKMODE_MASK) >>
        MII_BCM5400_AUXSTATUS_LINKMODE_SHIFT);
  phy->duplex = phy_BCM5400_link_table[link_mode][0] ?
   DUPLEX_FULL : DUPLEX_HALF;
  phy->speed = phy_BCM5400_link_table[link_mode][2] ?
    SPEED_1000 :
    (phy_BCM5400_link_table[link_mode][1] ?
     SPEED_100 : SPEED_10);
  val = sungem_phy_read(phy, MII_LPA);
  phy->pause = (phy->duplex == DUPLEX_FULL) &&
   ((val & LPA_PAUSE) != 0);
 }




 return 0;
}
