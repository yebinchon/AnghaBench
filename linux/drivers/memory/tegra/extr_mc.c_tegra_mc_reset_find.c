
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_mc_reset {unsigned long id; } ;
struct tegra_mc {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_resets; struct tegra_mc_reset const* resets; } ;



__attribute__((used)) static const struct tegra_mc_reset *tegra_mc_reset_find(struct tegra_mc *mc,
       unsigned long id)
{
 unsigned int i;

 for (i = 0; i < mc->soc->num_resets; i++)
  if (mc->soc->resets[i].id == id)
   return &mc->soc->resets[i];

 return ((void*)0);
}
