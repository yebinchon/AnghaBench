
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct gswip_priv {int dev; } ;
struct dsa_switch {struct gswip_priv* priv; } ;







 int GSWIP_PCE_PCTRL_0_PSTATE_FORWARDING ;
 int GSWIP_PCE_PCTRL_0_PSTATE_LEARNING ;
 int GSWIP_PCE_PCTRL_0_PSTATE_LISTEN ;
 int GSWIP_PCE_PCTRL_0_PSTATE_MASK ;
 int GSWIP_PCE_PCTRL_0p (int) ;
 int GSWIP_SDMA_PCTRL_EN ;
 int GSWIP_SDMA_PCTRLp (int) ;
 int dev_err (int ,char*,int) ;
 int gswip_switch_mask (struct gswip_priv*,int ,int ,int ) ;

__attribute__((used)) static void gswip_port_stp_state_set(struct dsa_switch *ds, int port, u8 state)
{
 struct gswip_priv *priv = ds->priv;
 u32 stp_state;

 switch (state) {
 case 131:
  gswip_switch_mask(priv, GSWIP_SDMA_PCTRL_EN, 0,
      GSWIP_SDMA_PCTRLp(port));
  return;
 case 132:
 case 128:
  stp_state = GSWIP_PCE_PCTRL_0_PSTATE_LISTEN;
  break;
 case 129:
  stp_state = GSWIP_PCE_PCTRL_0_PSTATE_LEARNING;
  break;
 case 130:
  stp_state = GSWIP_PCE_PCTRL_0_PSTATE_FORWARDING;
  break;
 default:
  dev_err(priv->dev, "invalid STP state: %d\n", state);
  return;
 }

 gswip_switch_mask(priv, 0, GSWIP_SDMA_PCTRL_EN,
     GSWIP_SDMA_PCTRLp(port));
 gswip_switch_mask(priv, GSWIP_PCE_PCTRL_0_PSTATE_MASK, stp_state,
     GSWIP_PCE_PCTRL_0p(port));
}
