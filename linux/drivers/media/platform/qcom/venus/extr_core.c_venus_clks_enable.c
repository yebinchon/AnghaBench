
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_resources {unsigned int clks_num; } ;
struct venus_core {int * clks; struct venus_resources* res; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int venus_clks_enable(struct venus_core *core)
{
 const struct venus_resources *res = core->res;
 unsigned int i;
 int ret;

 for (i = 0; i < res->clks_num; i++) {
  ret = clk_prepare_enable(core->clks[i]);
  if (ret)
   goto err;
 }

 return 0;
err:
 while (i--)
  clk_disable_unprepare(core->clks[i]);

 return ret;
}
