
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int * clks; } ;


 int MTK_CLK_MAX ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mtk_clk_disable(struct mtk_eth *eth)
{
 int clk;

 for (clk = MTK_CLK_MAX - 1; clk >= 0; clk--)
  clk_disable_unprepare(eth->clks[clk]);
}
