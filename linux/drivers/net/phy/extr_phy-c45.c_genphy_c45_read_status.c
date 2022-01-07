
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; scalar_t__ asym_pause; scalar_t__ pause; int duplex; int speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 int genphy_c45_read_link (struct phy_device*) ;
 int genphy_c45_read_lpa (struct phy_device*) ;
 int genphy_c45_read_pma (struct phy_device*) ;
 int phy_resolve_aneg_linkmode (struct phy_device*) ;

int genphy_c45_read_status(struct phy_device *phydev)
{
 int ret;

 ret = genphy_c45_read_link(phydev);
 if (ret)
  return ret;

 phydev->speed = SPEED_UNKNOWN;
 phydev->duplex = DUPLEX_UNKNOWN;
 phydev->pause = 0;
 phydev->asym_pause = 0;

 if (phydev->autoneg == AUTONEG_ENABLE) {
  ret = genphy_c45_read_lpa(phydev);
  if (ret)
   return ret;

  phy_resolve_aneg_linkmode(phydev);
 } else {
  ret = genphy_c45_read_pma(phydev);
 }

 return ret;
}
