
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; scalar_t__ autoneg; int speed; int duplex; scalar_t__ autoneg_complete; scalar_t__ asym_pause; scalar_t__ pause; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int MII_BMCR ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_UNKNOWN ;
 int genphy_read_lpa (struct phy_device*) ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_resolve_aneg_linkmode (struct phy_device*) ;

int genphy_read_status(struct phy_device *phydev)
{
 int err, old_link = phydev->link;


 err = genphy_update_link(phydev);
 if (err)
  return err;


 if (phydev->autoneg == AUTONEG_ENABLE && old_link && phydev->link)
  return 0;

 phydev->speed = SPEED_UNKNOWN;
 phydev->duplex = DUPLEX_UNKNOWN;
 phydev->pause = 0;
 phydev->asym_pause = 0;

 err = genphy_read_lpa(phydev);
 if (err < 0)
  return err;

 if (phydev->autoneg == AUTONEG_ENABLE && phydev->autoneg_complete) {
  phy_resolve_aneg_linkmode(phydev);
 } else if (phydev->autoneg == AUTONEG_DISABLE) {
  int bmcr = phy_read(phydev, MII_BMCR);

  if (bmcr < 0)
   return bmcr;

  if (bmcr & BMCR_FULLDPLX)
   phydev->duplex = DUPLEX_FULL;
  else
   phydev->duplex = DUPLEX_HALF;

  if (bmcr & BMCR_SPEED1000)
   phydev->speed = SPEED_1000;
  else if (bmcr & BMCR_SPEED100)
   phydev->speed = SPEED_100;
  else
   phydev->speed = SPEED_10;
 }

 return 0;
}
