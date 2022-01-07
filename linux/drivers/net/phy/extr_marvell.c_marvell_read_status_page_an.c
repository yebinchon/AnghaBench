
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ duplex; int pause; int asym_pause; int lp_advertising; int speed; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_ASYM_FIBER ;
 int LPA_PAUSE_CAP ;
 int LPA_PAUSE_FIBER ;
 int MII_LPA ;
 int MII_M1011_PHY_STATUS ;


 int MII_M1011_PHY_STATUS_FULLDUPLEX ;
 int MII_M1011_PHY_STATUS_SPD_MASK ;
 int MII_STAT1000 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int fiber_lpa_mod_linkmode_lpa_t (int ,int) ;
 int mii_lpa_to_linkmode_lpa_t (int ,int) ;
 int mii_stat1000_mod_linkmode_lpa_t (int ,int) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_read_status_page_an(struct phy_device *phydev,
           int fiber)
{
 int status;
 int lpa;
 int lpagb;

 status = phy_read(phydev, MII_M1011_PHY_STATUS);
 if (status < 0)
  return status;

 lpa = phy_read(phydev, MII_LPA);
 if (lpa < 0)
  return lpa;

 lpagb = phy_read(phydev, MII_STAT1000);
 if (lpagb < 0)
  return lpagb;

 if (status & MII_M1011_PHY_STATUS_FULLDUPLEX)
  phydev->duplex = DUPLEX_FULL;
 else
  phydev->duplex = DUPLEX_HALF;

 status = status & MII_M1011_PHY_STATUS_SPD_MASK;
 phydev->pause = 0;
 phydev->asym_pause = 0;

 switch (status) {
 case 128:
  phydev->speed = SPEED_1000;
  break;

 case 129:
  phydev->speed = SPEED_100;
  break;

 default:
  phydev->speed = SPEED_10;
  break;
 }

 if (!fiber) {
  mii_lpa_to_linkmode_lpa_t(phydev->lp_advertising, lpa);
  mii_stat1000_mod_linkmode_lpa_t(phydev->lp_advertising, lpagb);

  if (phydev->duplex == DUPLEX_FULL) {
   phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
   phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
  }
 } else {

  fiber_lpa_mod_linkmode_lpa_t(phydev->lp_advertising, lpa);

  if (phydev->duplex == DUPLEX_FULL) {
   if (!(lpa & LPA_PAUSE_FIBER)) {
    phydev->pause = 0;
    phydev->asym_pause = 0;
   } else if ((lpa & LPA_PAUSE_ASYM_FIBER)) {
    phydev->pause = 1;
    phydev->asym_pause = 1;
   } else {
    phydev->pause = 1;
    phydev->asym_pause = 0;
   }
  }
 }
 return 0;
}
