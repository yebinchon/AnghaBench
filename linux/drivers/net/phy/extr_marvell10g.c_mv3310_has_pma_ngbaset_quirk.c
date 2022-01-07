
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devices_in_package; int* device_ids; } ;
struct phy_device {TYPE_1__ c45_ids; } ;


 int MDIO_DEVS_PMAPMD ;
 size_t MDIO_MMD_PMAPMD ;
 int MV_PHY_ALASKA_NBT_QUIRK_MASK ;
 int MV_PHY_ALASKA_NBT_QUIRK_REV ;

__attribute__((used)) static bool mv3310_has_pma_ngbaset_quirk(struct phy_device *phydev)
{
 if (!(phydev->c45_ids.devices_in_package & MDIO_DEVS_PMAPMD))
  return 0;


 return (phydev->c45_ids.device_ids[MDIO_MMD_PMAPMD] &
  MV_PHY_ALASKA_NBT_QUIRK_MASK) == MV_PHY_ALASKA_NBT_QUIRK_REV;
}
