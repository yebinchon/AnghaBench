
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcmgenet_priv {TYPE_2__* dev; TYPE_1__* hw_params; } ;
struct TYPE_4__ {int phydev; } ;
struct TYPE_3__ {int flags; } ;


 int GENET_HAS_MOCA_LINK_DET ;
 int GENET_IS_V5 (struct bcmgenet_priv*) ;
 int LED_ACT_SOURCE_MAC ;
 int SYS_PORT_CTRL ;
 int bcmgenet_fixed_phy_link_update ;
 int bcmgenet_sys_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_sys_writel (struct bcmgenet_priv*,int ,int ) ;
 int fixed_phy_set_link_update (int ,int ) ;

__attribute__((used)) static void bcmgenet_moca_phy_setup(struct bcmgenet_priv *priv)
{
 u32 reg;

 if (!GENET_IS_V5(priv)) {

  reg = bcmgenet_sys_readl(priv, SYS_PORT_CTRL);
  reg |= LED_ACT_SOURCE_MAC;
  bcmgenet_sys_writel(priv, reg, SYS_PORT_CTRL);
 }

 if (priv->hw_params->flags & GENET_HAS_MOCA_LINK_DET)
  fixed_phy_set_link_update(priv->dev->phydev,
       bcmgenet_fixed_phy_link_update);
}
