
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dwmac {TYPE_1__* ops; int clk_rx; int clk_tx; } ;
struct TYPE_2__ {int (* clk_prepare ) (struct stm32_dwmac*,int) ;} ;


 int clk_disable_unprepare (int ) ;
 int stub1 (struct stm32_dwmac*,int) ;

__attribute__((used)) static void stm32_dwmac_clk_disable(struct stm32_dwmac *dwmac)
{
 clk_disable_unprepare(dwmac->clk_tx);
 clk_disable_unprepare(dwmac->clk_rx);

 if (dwmac->ops->clk_prepare)
  dwmac->ops->clk_prepare(dwmac, 0);
}
