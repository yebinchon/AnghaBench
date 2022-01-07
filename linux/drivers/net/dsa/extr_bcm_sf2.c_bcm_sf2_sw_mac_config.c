
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int interface; int pause; int speed; scalar_t__ duplex; scalar_t__ link; } ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {scalar_t__ type; } ;


 scalar_t__ BCM7445_DEVICE_ID ;
 int CORE_IMP0_PRT_ID ;
 int CORE_STS_OVERRIDE_GMIIP2_PORT (int) ;
 int CORE_STS_OVERRIDE_GMIIP_PORT (int) ;
 scalar_t__ DUPLEX_FULL ;
 int DUPLX_MODE ;
 int EXT_EPHY ;
 int EXT_GPHY ;
 int EXT_REVMII ;
 int ID_MODE_DIS ;
 int LINK_STS ;
 int MLO_PAUSE_TX ;
 int MLO_PAUSE_TXRX_MASK ;




 int PORT_MODE_MASK ;
 int PORT_MODE_SHIFT ;
 int REG_RGMII_CNTRL_P (int) ;
 int RX_PAUSE_EN ;
 int SPDSTS_100 ;
 int SPDSTS_1000 ;


 int SPEED_SHIFT ;
 int SW_OVERRIDE ;
 int TX_PAUSE_EN ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int) ;
 int reg_readl (struct bcm_sf2_priv*,int ) ;
 int reg_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static void bcm_sf2_sw_mac_config(struct dsa_switch *ds, int port,
      unsigned int mode,
      const struct phylink_link_state *state)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 u32 id_mode_dis = 0, port_mode;
 u32 reg, offset;

 if (port == core_readl(priv, CORE_IMP0_PRT_ID))
  return;

 if (priv->type == BCM7445_DEVICE_ID)
  offset = CORE_STS_OVERRIDE_GMIIP_PORT(port);
 else
  offset = CORE_STS_OVERRIDE_GMIIP2_PORT(port);

 switch (state->interface) {
 case 131:
  id_mode_dis = 1;

 case 130:
  port_mode = EXT_GPHY;
  break;
 case 133:
  port_mode = EXT_EPHY;
  break;
 case 132:
  port_mode = EXT_REVMII;
  break;
 default:

  goto force_link;
 }




 reg = reg_readl(priv, REG_RGMII_CNTRL_P(port));
 reg &= ~ID_MODE_DIS;
 reg &= ~(PORT_MODE_MASK << PORT_MODE_SHIFT);
 reg &= ~(RX_PAUSE_EN | TX_PAUSE_EN);

 reg |= port_mode;
 if (id_mode_dis)
  reg |= ID_MODE_DIS;

 if (state->pause & MLO_PAUSE_TXRX_MASK) {
  if (state->pause & MLO_PAUSE_TX)
   reg |= TX_PAUSE_EN;
  reg |= RX_PAUSE_EN;
 }

 reg_writel(priv, reg, REG_RGMII_CNTRL_P(port));

force_link:

 reg = SW_OVERRIDE;
 switch (state->speed) {
 case 128:
  reg |= SPDSTS_1000 << SPEED_SHIFT;
  break;
 case 129:
  reg |= SPDSTS_100 << SPEED_SHIFT;
  break;
 }

 if (state->link)
  reg |= LINK_STS;
 if (state->duplex == DUPLEX_FULL)
  reg |= DUPLX_MODE;

 core_writel(priv, reg, offset);
}
