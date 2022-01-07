
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g12a_mdio_mux {int pll_is_enabled; int pll; scalar_t__ regs; } ;


 scalar_t__ ETH_PHY_CNTL2 ;
 int clk_disable_unprepare (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int g12a_enable_external_mdio(struct g12a_mdio_mux *priv)
{

 writel_relaxed(0x0, priv->regs + ETH_PHY_CNTL2);


 if (priv->pll_is_enabled) {
  clk_disable_unprepare(priv->pll);
  priv->pll_is_enabled = 0;
 }

 return 0;
}
