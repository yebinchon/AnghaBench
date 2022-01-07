
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsc8531_private {int nleds; int * leds_mode; int rate_magic; } ;
struct phy_device {TYPE_1__* drv; int interface; struct vsc8531_private* priv; } ;
struct TYPE_2__ {int phy_id; int phy_id_mask; } ;


 int PHY_ID_VSC8530 ;
 int PHY_ID_VSC8531 ;
 int PHY_ID_VSC8540 ;
 int PHY_ID_VSC8541 ;
 int vsc8531_pre_init_seq_set (struct phy_device*) ;
 int vsc85xx_default_config (struct phy_device*) ;
 int vsc85xx_edge_rate_cntl_set (struct phy_device*,int ) ;
 int vsc85xx_eee_init_seq_set (struct phy_device*) ;
 int vsc85xx_led_cntl_set (struct phy_device*,int,int ) ;
 int vsc85xx_mac_if_set (struct phy_device*,int ) ;

__attribute__((used)) static int vsc85xx_config_init(struct phy_device *phydev)
{
 int rc, i, phy_id;
 struct vsc8531_private *vsc8531 = phydev->priv;

 rc = vsc85xx_default_config(phydev);
 if (rc)
  return rc;

 rc = vsc85xx_mac_if_set(phydev, phydev->interface);
 if (rc)
  return rc;

 rc = vsc85xx_edge_rate_cntl_set(phydev, vsc8531->rate_magic);
 if (rc)
  return rc;

 phy_id = phydev->drv->phy_id & phydev->drv->phy_id_mask;
 if (PHY_ID_VSC8531 == phy_id || PHY_ID_VSC8541 == phy_id ||
     PHY_ID_VSC8530 == phy_id || PHY_ID_VSC8540 == phy_id) {
  rc = vsc8531_pre_init_seq_set(phydev);
  if (rc)
   return rc;
 }

 rc = vsc85xx_eee_init_seq_set(phydev);
 if (rc)
  return rc;

 for (i = 0; i < vsc8531->nleds; i++) {
  rc = vsc85xx_led_cntl_set(phydev, i, vsc8531->leds_mode[i]);
  if (rc)
   return rc;
 }

 return 0;
}
