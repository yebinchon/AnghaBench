
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vsc8531_private {int rate_magic; int nleds; int stats; int nstats; int hw_stats; int supp_led_modes; } ;
struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; struct vsc8531_private* priv; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VSC8531_LINK_1000_ACTIVITY ;
 int VSC8531_LINK_100_ACTIVITY ;
 int VSC85XX_SUPP_LED_MODES ;
 int devm_kcalloc (int *,int ,int,int ) ;
 struct vsc8531_private* devm_kzalloc (int *,int,int ) ;
 int vsc85xx_dt_led_modes_get (struct phy_device*,int *) ;
 int vsc85xx_edge_rate_magic_get (struct phy_device*) ;
 int vsc85xx_hw_stats ;

__attribute__((used)) static int vsc85xx_probe(struct phy_device *phydev)
{
 struct vsc8531_private *vsc8531;
 int rate_magic;
 u32 default_mode[2] = {VSC8531_LINK_1000_ACTIVITY,
    VSC8531_LINK_100_ACTIVITY};

 rate_magic = vsc85xx_edge_rate_magic_get(phydev);
 if (rate_magic < 0)
  return rate_magic;

 vsc8531 = devm_kzalloc(&phydev->mdio.dev, sizeof(*vsc8531), GFP_KERNEL);
 if (!vsc8531)
  return -ENOMEM;

 phydev->priv = vsc8531;

 vsc8531->rate_magic = rate_magic;
 vsc8531->nleds = 2;
 vsc8531->supp_led_modes = VSC85XX_SUPP_LED_MODES;
 vsc8531->hw_stats = vsc85xx_hw_stats;
 vsc8531->nstats = ARRAY_SIZE(vsc85xx_hw_stats);
 vsc8531->stats = devm_kcalloc(&phydev->mdio.dev, vsc8531->nstats,
          sizeof(u64), GFP_KERNEL);
 if (!vsc8531->stats)
  return -ENOMEM;

 return vsc85xx_dt_led_modes_get(phydev, default_mode);
}
