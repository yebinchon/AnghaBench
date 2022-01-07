
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct unimac_mdio_priv {int clk_freq; int clk; } ;


 int MDIO_CFG ;
 int MDIO_CLK_DIV_MASK ;
 int MDIO_CLK_DIV_SHIFT ;
 unsigned long clk_get_rate (int ) ;
 int pr_warn (char*) ;
 int unimac_mdio_readl (struct unimac_mdio_priv*,int ) ;
 int unimac_mdio_writel (struct unimac_mdio_priv*,int,int ) ;

__attribute__((used)) static void unimac_mdio_clk_set(struct unimac_mdio_priv *priv)
{
 unsigned long rate;
 u32 reg, div;


 if (!priv->clk_freq)
  return;

 if (!priv->clk)
  rate = 250000000;
 else
  rate = clk_get_rate(priv->clk);

 div = (rate / (2 * priv->clk_freq)) - 1;
 if (div & ~MDIO_CLK_DIV_MASK) {
  pr_warn("Incorrect MDIO clock frequency, ignoring\n");
  return;
 }




 reg = unimac_mdio_readl(priv, MDIO_CFG);
 reg &= ~(MDIO_CLK_DIV_MASK << MDIO_CLK_DIV_SHIFT);
 reg |= div << MDIO_CLK_DIV_SHIFT;
 unimac_mdio_writel(priv, reg, MDIO_CFG);
}
