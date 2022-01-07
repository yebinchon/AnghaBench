
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct g12a_ephy_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ ETH_PLL_CTL0 ;
 int PLL_CTL0_EN ;
 int PLL_CTL0_RST ;
 struct g12a_ephy_pll* g12a_ephy_pll_to_dev (struct clk_hw*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void g12a_ephy_pll_disable(struct clk_hw *hw)
{
 struct g12a_ephy_pll *pll = g12a_ephy_pll_to_dev(hw);
 u32 val;

 val = readl(pll->base + ETH_PLL_CTL0);
 val &= ~PLL_CTL0_EN;
 val |= PLL_CTL0_RST;
 writel(val, pll->base + ETH_PLL_CTL0);
}
