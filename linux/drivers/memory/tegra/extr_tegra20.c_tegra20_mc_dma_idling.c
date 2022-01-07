
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc_reset {int status; } ;
struct tegra_mc {int dummy; } ;


 scalar_t__ mc_readl (struct tegra_mc*,int ) ;

__attribute__((used)) static bool tegra20_mc_dma_idling(struct tegra_mc *mc,
      const struct tegra_mc_reset *rst)
{
 return mc_readl(mc, rst->status) == 0;
}
