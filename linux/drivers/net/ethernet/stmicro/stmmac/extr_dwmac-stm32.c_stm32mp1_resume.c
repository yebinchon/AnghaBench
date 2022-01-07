
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dwmac {int clk_ethstp; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void stm32mp1_resume(struct stm32_dwmac *dwmac)
{
 clk_disable_unprepare(dwmac->clk_ethstp);
}
