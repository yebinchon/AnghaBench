
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int lp_advertising; scalar_t__ is_gigabit_capable; int autoneg_complete; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int CTL1000_ENABLE_MASTER ;
 int ENOLINK ;
 int LPA_1000MSFAIL ;
 int MII_CTRL1000 ;
 int MII_LPA ;
 int MII_STAT1000 ;
 int linkmode_zero (int ) ;
 int mii_lpa_mod_linkmode_lpa_t (int ,int) ;
 int mii_stat1000_mod_linkmode_lpa_t (int ,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_err (struct phy_device*,char*) ;

int genphy_read_lpa(struct phy_device *phydev)
{
 int lpa, lpagb;

 if (phydev->autoneg == AUTONEG_ENABLE) {
  if (!phydev->autoneg_complete) {
   mii_stat1000_mod_linkmode_lpa_t(phydev->lp_advertising,
       0);
   mii_lpa_mod_linkmode_lpa_t(phydev->lp_advertising, 0);
   return 0;
  }

  if (phydev->is_gigabit_capable) {
   lpagb = phy_read(phydev, MII_STAT1000);
   if (lpagb < 0)
    return lpagb;

   if (lpagb & LPA_1000MSFAIL) {
    int adv = phy_read(phydev, MII_CTRL1000);

    if (adv < 0)
     return adv;

    if (adv & CTL1000_ENABLE_MASTER)
     phydev_err(phydev, "Master/Slave resolution failed, maybe conflicting manual settings?\n");
    else
     phydev_err(phydev, "Master/Slave resolution failed\n");
    return -ENOLINK;
   }

   mii_stat1000_mod_linkmode_lpa_t(phydev->lp_advertising,
       lpagb);
  }

  lpa = phy_read(phydev, MII_LPA);
  if (lpa < 0)
   return lpa;

  mii_lpa_mod_linkmode_lpa_t(phydev->lp_advertising, lpa);
 } else {
  linkmode_zero(phydev->lp_advertising);
 }

 return 0;
}
