
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc_reset {int bit; int reset; } ;
struct tegra_mc {int dummy; } ;


 int BIT (int ) ;
 int mc_readl (struct tegra_mc*,int ) ;

__attribute__((used)) static int tegra20_mc_reset_status(struct tegra_mc *mc,
       const struct tegra_mc_reset *rst)
{
 return (mc_readl(mc, rst->reset) & BIT(rst->bit)) == 0;
}
