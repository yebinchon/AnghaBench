
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_clk_provider {unsigned int num_clocks; int * clks; scalar_t__ of_node; } ;
struct fimc_md {struct cam_clk_provider clk_provider; } ;


 int clk_unregister (int ) ;
 int of_clk_del_provider (scalar_t__) ;

__attribute__((used)) static void fimc_md_unregister_clk_provider(struct fimc_md *fmd)
{
 struct cam_clk_provider *cp = &fmd->clk_provider;
 unsigned int i;

 if (cp->of_node)
  of_clk_del_provider(cp->of_node);

 for (i = 0; i < cp->num_clocks; i++)
  clk_unregister(cp->clks[i]);
}
