
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;


 int BIT (int) ;
 int GSWIP_FDMA_PCTRL_EN ;
 int GSWIP_FDMA_PCTRLp (int) ;
 int GSWIP_MDIO_MDC_CFG0 ;
 int GSWIP_MDIO_PHY_LINK_DOWN ;
 int GSWIP_MDIO_PHY_LINK_MASK ;
 int GSWIP_MDIO_PHYp (int) ;
 int GSWIP_SDMA_PCTRL_EN ;
 int GSWIP_SDMA_PCTRLp (int) ;
 int dsa_is_cpu_port (struct dsa_switch*,int) ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int gswip_mdio_mask (struct gswip_priv*,int ,int ,int ) ;
 int gswip_switch_mask (struct gswip_priv*,int ,int ,int ) ;

__attribute__((used)) static void gswip_port_disable(struct dsa_switch *ds, int port)
{
 struct gswip_priv *priv = ds->priv;

 if (!dsa_is_user_port(ds, port))
  return;

 if (!dsa_is_cpu_port(ds, port)) {
  gswip_mdio_mask(priv, GSWIP_MDIO_PHY_LINK_DOWN,
    GSWIP_MDIO_PHY_LINK_MASK,
    GSWIP_MDIO_PHYp(port));

  gswip_mdio_mask(priv, BIT(port), 0, GSWIP_MDIO_MDC_CFG0);
 }

 gswip_switch_mask(priv, GSWIP_FDMA_PCTRL_EN, 0,
     GSWIP_FDMA_PCTRLp(port));
 gswip_switch_mask(priv, GSWIP_SDMA_PCTRL_EN, 0,
     GSWIP_SDMA_PCTRLp(port));
}
