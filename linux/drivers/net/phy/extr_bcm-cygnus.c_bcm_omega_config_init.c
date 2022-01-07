
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int phy_id; TYPE_1__* drv; } ;
struct TYPE_2__ {int phy_id_mask; int name; } ;


 int DOWNSHIFT_DEV_DISABLE ;
 int MII_BMSR ;
 int bcm_phy_28nm_a0b0_afe_config_init (struct phy_device*) ;
 int bcm_phy_downshift_get (struct phy_device*,int*) ;
 int bcm_phy_enable_apd (struct phy_device*,int) ;
 int bcm_phy_set_eee (struct phy_device*,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;
 int pr_info_once (char*,int ,int ,int) ;

__attribute__((used)) static int bcm_omega_config_init(struct phy_device *phydev)
{
 u8 count, rev;
 int ret = 0;

 rev = phydev->phy_id & ~phydev->drv->phy_id_mask;

 pr_info_once("%s: %s PHY revision: 0x%02x\n",
       phydev_name(phydev), phydev->drv->name, rev);






 phy_read(phydev, MII_BMSR);

 switch (rev) {
 case 0x00:
  ret = bcm_phy_28nm_a0b0_afe_config_init(phydev);
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
