
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_mc_timing {unsigned long rate; int * emem_data; } ;
struct tegra_mc {unsigned int num_timings; TYPE_1__* soc; int dev; struct tegra_mc_timing* timings; } ;
struct TYPE_2__ {unsigned int num_emem_regs; int * emem_regs; } ;


 int dev_err (int ,char*,unsigned long) ;
 int mc_writel (struct tegra_mc*,int ,int ) ;

void tegra_mc_write_emem_configuration(struct tegra_mc *mc, unsigned long rate)
{
 unsigned int i;
 struct tegra_mc_timing *timing = ((void*)0);

 for (i = 0; i < mc->num_timings; i++) {
  if (mc->timings[i].rate == rate) {
   timing = &mc->timings[i];
   break;
  }
 }

 if (!timing) {
  dev_err(mc->dev, "no memory timing registered for rate %lu\n",
   rate);
  return;
 }

 for (i = 0; i < mc->soc->num_emem_regs; ++i)
  mc_writel(mc, timing->emem_data[i], mc->soc->emem_regs[i]);
}
