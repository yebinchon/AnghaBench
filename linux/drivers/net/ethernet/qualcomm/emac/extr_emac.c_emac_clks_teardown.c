
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {int * clk; } ;


 unsigned int EMAC_CLK_CNT ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void emac_clks_teardown(struct emac_adapter *adpt)
{

 unsigned int i;

 for (i = 0; i < EMAC_CLK_CNT; i++)
  clk_disable_unprepare(adpt->clk[i]);
}
