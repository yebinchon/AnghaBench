
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int dummy; } ;
typedef scalar_t__ phy_interface_t ;


 scalar_t__ PHY_INTERFACE_MODE_MII ;
 scalar_t__ PHY_INTERFACE_MODE_REVMII ;
 int REG_RGMII_CNTRL_P (int) ;
 int RGMII_MODE_EN ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int phy_interface_mode_is_rgmii (scalar_t__) ;
 int reg_readl (struct bcm_sf2_priv*,int ) ;
 int reg_writel (struct bcm_sf2_priv*,int ,int ) ;

__attribute__((used)) static void bcm_sf2_sw_mac_link_set(struct dsa_switch *ds, int port,
        phy_interface_t interface, bool link)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 u32 reg;

 if (!phy_interface_mode_is_rgmii(interface) &&
     interface != PHY_INTERFACE_MODE_MII &&
     interface != PHY_INTERFACE_MODE_REVMII)
  return;


 reg = reg_readl(priv, REG_RGMII_CNTRL_P(port));
 if (link)
  reg |= RGMII_MODE_EN;
 else
  reg &= ~RGMII_MODE_EN;
 reg_writel(priv, reg, REG_RGMII_CNTRL_P(port));
}
