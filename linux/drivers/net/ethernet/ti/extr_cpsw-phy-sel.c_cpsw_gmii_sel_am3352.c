
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_phy_sel_priv {int gmii_sel; scalar_t__ rmii_clock_external; int dev; } ;
typedef int phy_interface_t ;


 int AM33XX_GMII_SEL_MODE_MII ;
 int AM33XX_GMII_SEL_MODE_RGMII ;
 int AM33XX_GMII_SEL_MODE_RMII ;
 int AM33XX_GMII_SEL_RGMII1_IDMODE ;
 int AM33XX_GMII_SEL_RGMII2_IDMODE ;
 int AM33XX_GMII_SEL_RMII1_IO_CLK_EN ;
 int AM33XX_GMII_SEL_RMII2_IO_CLK_EN ;
 int BIT (int) ;
 int GMII_SEL_MODE_MASK ;






 int dev_warn (int ,char*,int ) ;
 int phy_modes (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void cpsw_gmii_sel_am3352(struct cpsw_phy_sel_priv *priv,
     phy_interface_t phy_mode, int slave)
{
 u32 reg;
 u32 mask;
 u32 mode = 0;
 bool rgmii_id = 0;

 reg = readl(priv->gmii_sel);

 switch (phy_mode) {
 case 128:
  mode = AM33XX_GMII_SEL_MODE_RMII;
  break;

 case 132:
  mode = AM33XX_GMII_SEL_MODE_RGMII;
  break;

 case 131:
 case 130:
 case 129:
  mode = AM33XX_GMII_SEL_MODE_RGMII;
  rgmii_id = 1;
  break;

 default:
  dev_warn(priv->dev,
    "Unsupported PHY mode: \"%s\". Defaulting to MII.\n",
   phy_modes(phy_mode));

 case 133:
  mode = AM33XX_GMII_SEL_MODE_MII;
  break;
 }

 mask = GMII_SEL_MODE_MASK << (slave * 2) | BIT(slave + 6);
 mask |= BIT(slave + 4);
 mode <<= slave * 2;

 if (priv->rmii_clock_external) {
  if (slave == 0)
   mode |= AM33XX_GMII_SEL_RMII1_IO_CLK_EN;
  else
   mode |= AM33XX_GMII_SEL_RMII2_IO_CLK_EN;
 }

 if (rgmii_id) {
  if (slave == 0)
   mode |= AM33XX_GMII_SEL_RGMII1_IDMODE;
  else
   mode |= AM33XX_GMII_SEL_RGMII2_IDMODE;
 }

 reg &= ~mask;
 reg |= mode;

 writel(reg, priv->gmii_sel);
}
