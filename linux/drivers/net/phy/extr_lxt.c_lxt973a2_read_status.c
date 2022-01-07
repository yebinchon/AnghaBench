
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; scalar_t__ duplex; int pause; int asym_pause; int lp_advertising; void* speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 scalar_t__ DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_LPA ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int linkmode_zero (int ) ;
 int lxt973a2_update_link (struct phy_device*) ;
 int mii_lpa_to_linkmode_lpa_t (int ,int) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int lxt973a2_read_status(struct phy_device *phydev)
{
 int adv;
 int err;
 int lpa;


 err = lxt973a2_update_link(phydev);
 if (err)
  return err;

 if (AUTONEG_ENABLE == phydev->autoneg) {
  int retry = 1;

  adv = phy_read(phydev, MII_ADVERTISE);

  if (adv < 0)
   return adv;

  do {
   lpa = phy_read(phydev, MII_LPA);

   if (lpa < 0)
    return lpa;




  } while (lpa == adv && retry--);

  mii_lpa_to_linkmode_lpa_t(phydev->lp_advertising, lpa);

  lpa &= adv;

  phydev->speed = SPEED_10;
  phydev->duplex = DUPLEX_HALF;
  phydev->pause = phydev->asym_pause = 0;

  if (lpa & (LPA_100FULL | LPA_100HALF)) {
   phydev->speed = SPEED_100;

   if (lpa & LPA_100FULL)
    phydev->duplex = DUPLEX_FULL;
  } else {
   if (lpa & LPA_10FULL)
    phydev->duplex = DUPLEX_FULL;
  }

  if (phydev->duplex == DUPLEX_FULL) {
   phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
   phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
  }
 } else {
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

  phydev->pause = phydev->asym_pause = 0;
  linkmode_zero(phydev->lp_advertising);
 }

 return 0;
}
