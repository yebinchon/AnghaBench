
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc_reset {int bit; int control; } ;
struct tegra_mc {int dummy; } ;


 int BIT (int ) ;
 int mc_readl (struct tegra_mc*,int ) ;

__attribute__((used)) static int tegra_mc_reset_status_common(struct tegra_mc *mc,
     const struct tegra_mc_reset *rst)
{
 return (mc_readl(mc, rst->control) & BIT(rst->bit)) != 0;
}
