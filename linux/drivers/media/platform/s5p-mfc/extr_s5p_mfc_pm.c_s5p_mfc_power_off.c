
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_clocks; int device; int * clocks; int clock_gate; } ;


 int clk_disable_unprepare (int ) ;
 int clk_enable (int ) ;
 TYPE_1__* pm ;
 int pm_runtime_put_sync (int ) ;

int s5p_mfc_power_off(void)
{
 int i;


 clk_enable(pm->clock_gate);

 for (i = 0; i < pm->num_clocks; i++)
  clk_disable_unprepare(pm->clocks[i]);

 return pm_runtime_put_sync(pm->device);
}
