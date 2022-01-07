
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; scalar_t__ autoneg; scalar_t__ autoneg_complete; int mdix; int duplex; int speed; scalar_t__ asym_pause; scalar_t__ pause; } ;


 int AT803X_SPECIFIC_STATUS ;
 int AT803X_SS_DUPLEX ;
 int AT803X_SS_MDIX ;



 int AT803X_SS_SPEED_DUPLEX_RESOLVED ;
 int AT803X_SS_SPEED_MASK ;
 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int ETH_TP_MDI ;
 int ETH_TP_MDI_X ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_UNKNOWN ;
 int genphy_read_lpa (struct phy_device*) ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_resolve_aneg_pause (struct phy_device*) ;

__attribute__((used)) static int at803x_read_status(struct phy_device *phydev)
{
 int ss, err, old_link = phydev->link;


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





 ss = phy_read(phydev, AT803X_SPECIFIC_STATUS);
 if (ss < 0)
  return ss;

 if (ss & AT803X_SS_SPEED_DUPLEX_RESOLVED) {
  switch (ss & AT803X_SS_SPEED_MASK) {
  case 130:
   phydev->speed = SPEED_10;
   break;
  case 129:
   phydev->speed = SPEED_100;
   break;
  case 128:
   phydev->speed = SPEED_1000;
   break;
  }
  if (ss & AT803X_SS_DUPLEX)
   phydev->duplex = DUPLEX_FULL;
  else
   phydev->duplex = DUPLEX_HALF;
  if (ss & AT803X_SS_MDIX)
   phydev->mdix = ETH_TP_MDI_X;
  else
   phydev->mdix = ETH_TP_MDI;
 }

 if (phydev->autoneg == AUTONEG_ENABLE && phydev->autoneg_complete)
  phy_resolve_aneg_pause(phydev);

 return 0;
}
