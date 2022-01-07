
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;


 int BIT (int) ;
 int GSWIP_BM_PCFG_CNTEN ;
 int GSWIP_BM_PCFGp (int) ;
 int GSWIP_FDMA_PCTRL_EN ;
 int GSWIP_FDMA_PCTRL_VLANMOD_BOTH ;
 int GSWIP_FDMA_PCTRLp (int) ;
 int GSWIP_MDIO_MDC_CFG0 ;
 int GSWIP_MDIO_PHY_ADDR_MASK ;
 int GSWIP_MDIO_PHY_FCONRX_AUTO ;
 int GSWIP_MDIO_PHY_FCONTX_AUTO ;
 int GSWIP_MDIO_PHY_FDUP_AUTO ;
 int GSWIP_MDIO_PHY_LINK_AUTO ;
 int GSWIP_MDIO_PHY_SPEED_AUTO ;
 int GSWIP_MDIO_PHYp (int) ;
 int GSWIP_SDMA_PCTRL_EN ;
 int GSWIP_SDMA_PCTRLp (int) ;
 int dsa_is_cpu_port (struct dsa_switch*,int) ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int gswip_add_single_port_br (struct gswip_priv*,int,int) ;
 int gswip_mdio_mask (struct gswip_priv*,int ,int ,int ) ;
 int gswip_mdio_w (struct gswip_priv*,int,int ) ;
 int gswip_switch_mask (struct gswip_priv*,int ,int,int ) ;
 int gswip_switch_w (struct gswip_priv*,int ,int ) ;

__attribute__((used)) static int gswip_port_enable(struct dsa_switch *ds, int port,
        struct phy_device *phydev)
{
 struct gswip_priv *priv = ds->priv;
 int err;

 if (!dsa_is_user_port(ds, port))
  return 0;

 if (!dsa_is_cpu_port(ds, port)) {
  err = gswip_add_single_port_br(priv, port, 1);
  if (err)
   return err;
 }


 gswip_switch_w(priv, GSWIP_BM_PCFG_CNTEN, GSWIP_BM_PCFGp(port));


 gswip_switch_mask(priv, 0, GSWIP_FDMA_PCTRL_EN |
       GSWIP_FDMA_PCTRL_VLANMOD_BOTH,
    GSWIP_FDMA_PCTRLp(port));
 gswip_switch_mask(priv, 0, GSWIP_SDMA_PCTRL_EN,
     GSWIP_SDMA_PCTRLp(port));

 if (!dsa_is_cpu_port(ds, port)) {
  u32 macconf = GSWIP_MDIO_PHY_LINK_AUTO |
         GSWIP_MDIO_PHY_SPEED_AUTO |
         GSWIP_MDIO_PHY_FDUP_AUTO |
         GSWIP_MDIO_PHY_FCONTX_AUTO |
         GSWIP_MDIO_PHY_FCONRX_AUTO |
         (phydev->mdio.addr & GSWIP_MDIO_PHY_ADDR_MASK);

  gswip_mdio_w(priv, macconf, GSWIP_MDIO_PHYp(port));

  gswip_mdio_mask(priv, 0, BIT(port), GSWIP_MDIO_MDC_CFG0);
 }

 return 0;
}
