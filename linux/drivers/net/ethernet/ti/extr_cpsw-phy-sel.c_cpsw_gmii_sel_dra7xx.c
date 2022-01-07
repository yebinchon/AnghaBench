
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_phy_sel_priv {int gmii_sel; int dev; scalar_t__ rmii_clock_external; } ;
typedef int phy_interface_t ;


 int AM33XX_GMII_SEL_MODE_MII ;
 int AM33XX_GMII_SEL_MODE_RGMII ;
 int AM33XX_GMII_SEL_MODE_RMII ;
 int GMII_SEL_MODE_MASK ;






 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int ) ;
 int phy_modes (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void cpsw_gmii_sel_dra7xx(struct cpsw_phy_sel_priv *priv,
     phy_interface_t phy_mode, int slave)
{
 u32 reg;
 u32 mask;
 u32 mode = 0;

 reg = readl(priv->gmii_sel);

 switch (phy_mode) {
 case 128:
  mode = AM33XX_GMII_SEL_MODE_RMII;
  break;

 case 132:
 case 131:
 case 130:
 case 129:
  mode = AM33XX_GMII_SEL_MODE_RGMII;
  break;

 default:
  dev_warn(priv->dev,
    "Unsupported PHY mode: \"%s\". Defaulting to MII.\n",
   phy_modes(phy_mode));

 case 133:
  mode = AM33XX_GMII_SEL_MODE_MII;
  break;
 }

 switch (slave) {
 case 0:
  mask = GMII_SEL_MODE_MASK;
  break;
 case 1:
  mask = GMII_SEL_MODE_MASK << 4;
  mode <<= 4;
  break;
 default:
  dev_err(priv->dev, "invalid slave number...\n");
  return;
 }

 if (priv->rmii_clock_external)
  dev_err(priv->dev, "RMII External clock is not supported\n");

 reg &= ~mask;
 reg |= mode;

 writel(reg, priv->gmii_sel);
}
