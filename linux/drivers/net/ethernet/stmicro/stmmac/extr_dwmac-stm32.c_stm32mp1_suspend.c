
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dwmac {scalar_t__ clk_eth_ck; scalar_t__ syscfg_clk; scalar_t__ clk_tx; int clk_ethstp; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int stm32mp1_suspend(struct stm32_dwmac *dwmac)
{
 int ret = 0;

 ret = clk_prepare_enable(dwmac->clk_ethstp);
 if (ret)
  return ret;

 clk_disable_unprepare(dwmac->clk_tx);
 clk_disable_unprepare(dwmac->syscfg_clk);
 if (dwmac->clk_eth_ck)
  clk_disable_unprepare(dwmac->clk_eth_ck);

 return ret;
}
