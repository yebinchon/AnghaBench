
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int phy_id; TYPE_1__* drv; int dev_flags; } ;
struct TYPE_2__ {int phy_id_mask; int name; } ;


 int DOWNSHIFT_DEV_DISABLE ;
 int MII_BMSR ;
 int PHY_BRCM_7XXX_PATCH (int ) ;
 int PHY_BRCM_7XXX_REV (int ) ;
 int bcm7xxx_28nm_a0_patch_afe_config_init (struct phy_device*) ;
 int bcm7xxx_28nm_d0_afe_config_init (struct phy_device*) ;
 int bcm7xxx_28nm_e0_plus_afe_config_init (struct phy_device*) ;
 int bcm_phy_28nm_a0b0_afe_config_init (struct phy_device*) ;
 int bcm_phy_downshift_get (struct phy_device*,int*) ;
 int bcm_phy_enable_apd (struct phy_device*,int) ;
 int bcm_phy_set_eee (struct phy_device*,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;
 int pr_info_once (char*,int ,int ,int,int) ;

__attribute__((used)) static int bcm7xxx_28nm_config_init(struct phy_device *phydev)
{
 u8 rev = PHY_BRCM_7XXX_REV(phydev->dev_flags);
 u8 patch = PHY_BRCM_7XXX_PATCH(phydev->dev_flags);
 u8 count;
 int ret = 0;




 if (rev == 0)
  rev = phydev->phy_id & ~phydev->drv->phy_id_mask;

 pr_info_once("%s: %s PHY revision: 0x%02x, patch: %d\n",
       phydev_name(phydev), phydev->drv->name, rev, patch);






 phy_read(phydev, MII_BMSR);

 switch (rev) {
 case 0xa0:
 case 0xb0:
  ret = bcm_phy_28nm_a0b0_afe_config_init(phydev);
  break;
 case 0xd0:
  ret = bcm7xxx_28nm_d0_afe_config_init(phydev);
  break;
 case 0xe0:
 case 0xf0:

 case 0x10:
  ret = bcm7xxx_28nm_e0_plus_afe_config_init(phydev);
  break;
 case 0x01:
  ret = bcm7xxx_28nm_a0_patch_afe_config_init(phydev);
  break;
 default:
  break;
 }

 if (ret)
  return ret;

 ret = bcm_phy_downshift_get(phydev, &count);
 if (ret)
  return ret;


 ret = bcm_phy_set_eee(phydev, count == DOWNSHIFT_DEV_DISABLE);
 if (ret)
  return ret;

 return bcm_phy_enable_apd(phydev, 1);
}
