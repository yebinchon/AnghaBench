
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int interface; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {int dev; struct gswip_priv* priv; } ;


 int GSWIP_MII_CFG_LDCLKDIS ;
 int GSWIP_MII_CFG_MODE_MASK ;
 int GSWIP_MII_CFG_MODE_MIIM ;
 int GSWIP_MII_CFG_MODE_MIIP ;
 int GSWIP_MII_CFG_MODE_RGMII ;
 int GSWIP_MII_CFG_MODE_RMIIM ;
 int GSWIP_MII_PCDU_RXDLY_MASK ;
 int GSWIP_MII_PCDU_TXDLY_MASK ;
 int dev_err (int ,char*,int) ;
 int gswip_mii_mask_cfg (struct gswip_priv*,int ,int ,int) ;
 int gswip_mii_mask_pcdu (struct gswip_priv*,int,int ,int) ;

__attribute__((used)) static void gswip_phylink_mac_config(struct dsa_switch *ds, int port,
         unsigned int mode,
         const struct phylink_link_state *state)
{
 struct gswip_priv *priv = ds->priv;
 u32 miicfg = 0;

 miicfg |= GSWIP_MII_CFG_LDCLKDIS;

 switch (state->interface) {
 case 134:
 case 135:
  miicfg |= GSWIP_MII_CFG_MODE_MIIM;
  break;
 case 133:
  miicfg |= GSWIP_MII_CFG_MODE_MIIP;
  break;
 case 128:
  miicfg |= GSWIP_MII_CFG_MODE_RMIIM;
  break;
 case 132:
 case 131:
 case 130:
 case 129:
  miicfg |= GSWIP_MII_CFG_MODE_RGMII;
  break;
 default:
  dev_err(ds->dev,
   "Unsupported interface: %d\n", state->interface);
  return;
 }
 gswip_mii_mask_cfg(priv, GSWIP_MII_CFG_MODE_MASK, miicfg, port);

 switch (state->interface) {
 case 131:
  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_TXDLY_MASK |
       GSWIP_MII_PCDU_RXDLY_MASK, 0, port);
  break;
 case 130:
  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_RXDLY_MASK, 0, port);
  break;
 case 129:
  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_TXDLY_MASK, 0, port);
  break;
 default:
  break;
 }
}
