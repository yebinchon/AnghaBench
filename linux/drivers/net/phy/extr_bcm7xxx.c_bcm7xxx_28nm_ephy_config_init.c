
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int phy_id; TYPE_1__* drv; } ;
struct TYPE_2__ {int phy_id_mask; int name; } ;


 int MII_BMSR ;
 int bcm7xxx_28nm_ephy_01_afe_config_init (struct phy_device*) ;
 int bcm7xxx_28nm_ephy_apd_enable (struct phy_device*) ;
 int bcm7xxx_28nm_ephy_eee_enable (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;
 int pr_info_once (char*,int ,int ,int) ;

__attribute__((used)) static int bcm7xxx_28nm_ephy_config_init(struct phy_device *phydev)
{
 u8 rev = phydev->phy_id & ~phydev->drv->phy_id_mask;
 int ret = 0;

 pr_info_once("%s: %s PHY revision: 0x%02x\n",
       phydev_name(phydev), phydev->drv->name, rev);






 phy_read(phydev, MII_BMSR);


 if (rev == 0x01) {
  ret = bcm7xxx_28nm_ephy_01_afe_config_init(phydev);
  if (ret)
   return ret;
 }

 ret = bcm7xxx_28nm_ephy_eee_enable(phydev);
 if (ret)
  return ret;

 return bcm7xxx_28nm_ephy_apd_enable(phydev);
}
