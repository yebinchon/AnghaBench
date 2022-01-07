
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {scalar_t__ pause; int speed; int duplex; scalar_t__ autoneg; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int MII_LPA ;
 int SPEED_10 ;
 int SPEED_100 ;
 int sungem_phy_read (struct mii_phy*,int ) ;

__attribute__((used)) static int genmii_read_link(struct mii_phy *phy)
{
 u16 lpa;

 if (phy->autoneg) {
  lpa = sungem_phy_read(phy, MII_LPA);

  if (lpa & (LPA_10FULL | LPA_100FULL))
   phy->duplex = DUPLEX_FULL;
  else
   phy->duplex = DUPLEX_HALF;
  if (lpa & (LPA_100FULL | LPA_100HALF))
   phy->speed = SPEED_100;
  else
   phy->speed = SPEED_10;
  phy->pause = 0;
 }




  return 0;
}
