
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dwmac {int clk_rx; int clk_tx; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int stm32mcu_suspend(struct stm32_dwmac *dwmac)
{
 clk_disable_unprepare(dwmac->clk_tx);
 clk_disable_unprepare(dwmac->clk_rx);

 return 0;
}
