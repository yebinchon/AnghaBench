
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int advertising; int supported; } ;


 int ADVERTISE_FIBER_1000FULL ;
 int ADVERTISE_FIBER_1000HALF ;
 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int LPA_PAUSE_FIBER ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int genphy_restart_aneg (struct phy_device*) ;
 int genphy_setup_forced (struct phy_device*) ;
 int linkmode_adv_to_fiber_adv_t (int ) ;
 int linkmode_and (int ,int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int marvell_config_aneg_fiber(struct phy_device *phydev)
{
 int changed = 0;
 int err;
 int adv, oldadv;

 if (phydev->autoneg != AUTONEG_ENABLE)
  return genphy_setup_forced(phydev);


 linkmode_and(phydev->advertising, phydev->advertising,
       phydev->supported);


 adv = phy_read(phydev, MII_ADVERTISE);
 if (adv < 0)
  return adv;

 oldadv = adv;
 adv &= ~(ADVERTISE_FIBER_1000HALF | ADVERTISE_FIBER_1000FULL
  | LPA_PAUSE_FIBER);
 adv |= linkmode_adv_to_fiber_adv_t(phydev->advertising);

 if (adv != oldadv) {
  err = phy_write(phydev, MII_ADVERTISE, adv);
  if (err < 0)
   return err;

  changed = 1;
 }

 if (changed == 0) {



  int ctl = phy_read(phydev, MII_BMCR);

  if (ctl < 0)
   return ctl;

  if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
   changed = 1;
 }




 if (changed > 0)
  changed = genphy_restart_aneg(phydev);

 return changed;
}
