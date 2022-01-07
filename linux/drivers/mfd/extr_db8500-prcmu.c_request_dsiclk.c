
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int divsel_mask; int divsel; int divsel_shift; } ;


 int PRCM_DSI_PLLOUT_SEL ;
 int PRCM_DSI_PLLOUT_SEL_OFF ;
 TYPE_1__* dsiclk ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int request_dsiclk(u8 n, bool enable)
{
 u32 val;

 val = readl(PRCM_DSI_PLLOUT_SEL);
 val &= ~dsiclk[n].divsel_mask;
 val |= ((enable ? dsiclk[n].divsel : PRCM_DSI_PLLOUT_SEL_OFF) <<
  dsiclk[n].divsel_shift);
 writel(val, PRCM_DSI_PLLOUT_SEL);
 return 0;
}
