
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int eee_broken_modes; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int phy_modify_mmd_changed (struct phy_device*,int ,int ,int ,int ) ;

int genphy_config_eee_advert(struct phy_device *phydev)
{
 int err;


 if (!phydev->eee_broken_modes)
  return 0;

 err = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV,
         phydev->eee_broken_modes, 0);

 return err < 0 ? 0 : err;
}
