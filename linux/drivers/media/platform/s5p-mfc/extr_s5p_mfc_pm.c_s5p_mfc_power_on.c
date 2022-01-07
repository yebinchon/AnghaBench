
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_clocks; int device; int * clocks; int clock_gate; int * clk_names; } ;


 int clk_disable (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int mfc_err (char*,int ) ;
 TYPE_1__* pm ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;

int s5p_mfc_power_on(void)
{
 int i, ret = 0;

 ret = pm_runtime_get_sync(pm->device);
 if (ret < 0)
  return ret;


 for (i = 0; i < pm->num_clocks; i++) {
  ret = clk_prepare_enable(pm->clocks[i]);
  if (ret < 0) {
   mfc_err("clock prepare failed for clock: %s\n",
    pm->clk_names[i]);
   i++;
   goto err;
  }
 }


 clk_disable(pm->clock_gate);

 return 0;
err:
 while (--i > 0)
  clk_disable_unprepare(pm->clocks[i]);
 pm_runtime_put(pm->device);
 return ret;
}
