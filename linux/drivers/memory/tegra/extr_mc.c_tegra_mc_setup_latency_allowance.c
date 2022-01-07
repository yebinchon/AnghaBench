
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_mc_la {int mask; int shift; int def; int reg; } ;
struct tegra_mc {TYPE_2__* soc; int clk; scalar_t__ tick; } ;
struct TYPE_4__ {unsigned int num_clients; TYPE_1__* clients; } ;
struct TYPE_3__ {struct tegra_mc_la la; } ;


 int MC_EMEM_ARB_CFG ;
 int MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE (unsigned long long) ;
 int MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK ;
 int MC_TIMING_CONTROL ;
 int MC_TIMING_UPDATE ;
 int NSEC_PER_SEC ;
 unsigned long long clk_get_rate (int ) ;
 int do_div (unsigned long long,int ) ;
 int mc_readl (struct tegra_mc*,int ) ;
 int mc_writel (struct tegra_mc*,int,int ) ;

__attribute__((used)) static int tegra_mc_setup_latency_allowance(struct tegra_mc *mc)
{
 unsigned long long tick;
 unsigned int i;
 u32 value;


 tick = (unsigned long long)mc->tick * clk_get_rate(mc->clk);
 do_div(tick, NSEC_PER_SEC);

 value = mc_readl(mc, MC_EMEM_ARB_CFG);
 value &= ~MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK;
 value |= MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE(tick);
 mc_writel(mc, value, MC_EMEM_ARB_CFG);


 for (i = 0; i < mc->soc->num_clients; i++) {
  const struct tegra_mc_la *la = &mc->soc->clients[i].la;
  u32 value;

  value = mc_readl(mc, la->reg);
  value &= ~(la->mask << la->shift);
  value |= (la->def & la->mask) << la->shift;
  mc_writel(mc, value, la->reg);
 }


 mc_writel(mc, MC_TIMING_UPDATE, MC_TIMING_CONTROL);

 return 0;
}
