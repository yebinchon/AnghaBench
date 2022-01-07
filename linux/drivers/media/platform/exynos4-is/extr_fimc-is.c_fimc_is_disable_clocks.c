
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int * clocks; } ;


 int ISS_GATE_CLKS_MAX ;
 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int * fimc_is_clocks ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void fimc_is_disable_clocks(struct fimc_is *is)
{
 int i;

 for (i = 0; i < ISS_GATE_CLKS_MAX; i++) {
  if (!IS_ERR(is->clocks[i])) {
   clk_disable_unprepare(is->clocks[i]);
   pr_debug("disabled clock: %s\n", fimc_is_clocks[i]);
  }
 }
}
