
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_emc {unsigned int num_timings; int dev; struct emc_timing* timings; } ;
struct emc_timing {unsigned long rate; } ;


 int dev_err (int ,char*,unsigned long) ;

__attribute__((used)) static struct emc_timing *tegra_emc_find_timing(struct tegra_emc *emc,
      unsigned long rate)
{
 struct emc_timing *timing = ((void*)0);
 unsigned int i;

 for (i = 0; i < emc->num_timings; i++) {
  if (emc->timings[i].rate == rate) {
   timing = &emc->timings[i];
   break;
  }
 }

 if (!timing) {
  dev_err(emc->dev, "no timing for rate %lu\n", rate);
  return ((void*)0);
 }

 return timing;
}
