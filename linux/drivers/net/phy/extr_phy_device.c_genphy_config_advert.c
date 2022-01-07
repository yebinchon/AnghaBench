
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int advertising; int supported; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_100BASE4 ;
 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMSR_ESTATEN ;
 int MII_ADVERTISE ;
 int MII_BMSR ;
 int MII_CTRL1000 ;
 int linkmode_adv_to_mii_adv_t (int ) ;
 int linkmode_adv_to_mii_ctrl1000_t (int ) ;
 int linkmode_and (int ,int ,int ) ;
 int phy_modify_changed (struct phy_device*,int ,int,int ) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int genphy_config_advert(struct phy_device *phydev)
{
 int err, bmsr, changed = 0;
 u32 adv;


 linkmode_and(phydev->advertising, phydev->advertising,
       phydev->supported);

 adv = linkmode_adv_to_mii_adv_t(phydev->advertising);


 err = phy_modify_changed(phydev, MII_ADVERTISE,
     ADVERTISE_ALL | ADVERTISE_100BASE4 |
     ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM,
     adv);
 if (err < 0)
  return err;
 if (err > 0)
  changed = 1;

 bmsr = phy_read(phydev, MII_BMSR);
 if (bmsr < 0)
  return bmsr;





 if (!(bmsr & BMSR_ESTATEN))
  return changed;

 adv = linkmode_adv_to_mii_ctrl1000_t(phydev->advertising);

 err = phy_modify_changed(phydev, MII_CTRL1000,
     ADVERTISE_1000FULL | ADVERTISE_1000HALF,
     adv);
 if (err < 0)
  return err;
 if (err > 0)
  changed = 1;

 return changed;
}
