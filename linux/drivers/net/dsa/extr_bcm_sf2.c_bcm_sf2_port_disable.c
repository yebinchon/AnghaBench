
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int num_gphy; } ;
struct bcm_sf2_priv {int wol_ports_mask; int moca_port; int int_phy_mask; TYPE_1__ hw_params; } ;


 int BIT (int) ;
 int CORE_DIS_LEARN ;
 int CORE_MEM_PSM_VDD_CTRL ;
 int P_TXQ_PSM_VDD (int) ;
 int b53_disable_port (struct dsa_switch*,int) ;
 int bcm_sf2_gphy_enable_set (struct dsa_switch*,int) ;
 int bcm_sf2_port_intr_disable (struct bcm_sf2_priv*,int) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int ,int ) ;

__attribute__((used)) static void bcm_sf2_port_disable(struct dsa_switch *ds, int port)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 u32 reg;


 if (priv->wol_ports_mask & (1 << port)) {
  reg = core_readl(priv, CORE_DIS_LEARN);
  reg |= BIT(port);
  core_writel(priv, reg, CORE_DIS_LEARN);
  return;
 }

 if (port == priv->moca_port)
  bcm_sf2_port_intr_disable(priv, port);

 if (priv->int_phy_mask & 1 << port && priv->hw_params.num_gphy == 1)
  bcm_sf2_gphy_enable_set(ds, 0);

 b53_disable_port(ds, port);


 reg = core_readl(priv, CORE_MEM_PSM_VDD_CTRL);
 reg |= P_TXQ_PSM_VDD(port);
 core_writel(priv, reg, CORE_MEM_PSM_VDD_CTRL);
}
