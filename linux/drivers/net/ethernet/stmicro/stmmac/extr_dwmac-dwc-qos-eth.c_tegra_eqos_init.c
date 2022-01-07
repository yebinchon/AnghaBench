
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct tegra_eqos {scalar_t__ regs; int clk_slave; } ;
struct platform_device {int dummy; } ;


 scalar_t__ GMAC_1US_TIC_COUNTER ;
 unsigned long clk_get_rate (int ) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int tegra_eqos_init(struct platform_device *pdev, void *priv)
{
 struct tegra_eqos *eqos = priv;
 unsigned long rate;
 u32 value;

 rate = clk_get_rate(eqos->clk_slave);

 value = (rate / 1000000) - 1;
 writel(value, eqos->regs + GMAC_1US_TIC_COUNTER);

 return 0;
}
