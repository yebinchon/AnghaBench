
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int dummy; } ;


 int CK25_DIS ;
 int EXT_PWR_DOWN ;
 int IDDQ_BIAS ;
 int IDDQ_GLOBAL_PWR ;
 int PHY_RESET ;
 int REG_LED_CNTRL (int ) ;
 int REG_SPHY_CNTRL ;
 int SPDLNK_SRC_SEL ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int mdelay (int) ;
 int reg_readl (struct bcm_sf2_priv*,int ) ;
 int reg_writel (struct bcm_sf2_priv*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void bcm_sf2_gphy_enable_set(struct dsa_switch *ds, bool enable)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 u32 reg;

 reg = reg_readl(priv, REG_SPHY_CNTRL);
 if (enable) {
  reg |= PHY_RESET;
  reg &= ~(EXT_PWR_DOWN | IDDQ_BIAS | IDDQ_GLOBAL_PWR | CK25_DIS);
  reg_writel(priv, reg, REG_SPHY_CNTRL);
  udelay(21);
  reg = reg_readl(priv, REG_SPHY_CNTRL);
  reg &= ~PHY_RESET;
 } else {
  reg |= EXT_PWR_DOWN | IDDQ_BIAS | PHY_RESET;
  reg_writel(priv, reg, REG_SPHY_CNTRL);
  mdelay(1);
  reg |= CK25_DIS;
 }
 reg_writel(priv, reg, REG_SPHY_CNTRL);


 if (!enable) {
  reg = reg_readl(priv, REG_LED_CNTRL(0));
  reg |= SPDLNK_SRC_SEL;
  reg_writel(priv, reg, REG_LED_CNTRL(0));
 }
}
