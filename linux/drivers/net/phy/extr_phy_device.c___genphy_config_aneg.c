
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int genphy_config_advert (struct phy_device*) ;
 scalar_t__ genphy_config_eee_advert (struct phy_device*) ;
 int genphy_restart_aneg (struct phy_device*) ;
 int genphy_setup_forced (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

int __genphy_config_aneg(struct phy_device *phydev, bool changed)
{
 int err;

 if (genphy_config_eee_advert(phydev))
  changed = 1;

 if (AUTONEG_ENABLE != phydev->autoneg)
  return genphy_setup_forced(phydev);

 err = genphy_config_advert(phydev);
 if (err < 0)
  return err;
 else if (err)
  changed = 1;

 if (!changed) {



  int ctl = phy_read(phydev, MII_BMCR);

  if (ctl < 0)
   return ctl;

  if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
   changed = 1;
 }




 return changed ? genphy_restart_aneg(phydev) : 0;
}
