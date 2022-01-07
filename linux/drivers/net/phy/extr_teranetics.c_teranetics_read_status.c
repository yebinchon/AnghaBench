
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_VEND1 ;
 int MDIO_PHYXS_LANE_READY ;
 int MDIO_PHYXS_LNSTAT ;
 int MDIO_STAT1 ;
 int MDIO_STAT1_LSTATUS ;
 int SPEED_10000 ;
 int phy_read_mmd (struct phy_device*,int ,int) ;

__attribute__((used)) static int teranetics_read_status(struct phy_device *phydev)
{
 int reg;

 phydev->link = 1;

 phydev->speed = SPEED_10000;
 phydev->duplex = DUPLEX_FULL;

 if (!phy_read_mmd(phydev, MDIO_MMD_VEND1, 93)) {
  reg = phy_read_mmd(phydev, MDIO_MMD_PHYXS, MDIO_PHYXS_LNSTAT);
  if (reg < 0 ||
      !((reg & MDIO_PHYXS_LANE_READY) == MDIO_PHYXS_LANE_READY)) {
   phydev->link = 0;
   return 0;
  }

  reg = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_STAT1);
  if (reg < 0 || !(reg & MDIO_STAT1_LSTATUS))
   phydev->link = 0;
 }

 return 0;
}
