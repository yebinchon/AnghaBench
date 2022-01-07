
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_resources {unsigned int clks_num; } ;
struct venus_core {int * clks; struct venus_resources* res; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void venus_clks_disable(struct venus_core *core)
{
 const struct venus_resources *res = core->res;
 unsigned int i = res->clks_num;

 while (i--)
  clk_disable_unprepare(core->clks[i]);
}
