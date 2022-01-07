
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int * clks; } ;


 int MTK_CLK_MAX ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mtk_clk_enable(struct mtk_eth *eth)
{
 int clk, ret;

 for (clk = 0; clk < MTK_CLK_MAX ; clk++) {
  ret = clk_prepare_enable(eth->clks[clk]);
  if (ret)
   goto err_disable_clks;
 }

 return 0;

err_disable_clks:
 while (--clk >= 0)
  clk_disable_unprepare(eth->clks[clk]);

 return ret;
}
