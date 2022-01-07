
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int divsel; int divsel_mask; int divsel_shift; } ;


 int PLL_RAW ;
 int PRCMU_HDMICLK ;
 int PRCM_DSI_PLLOUT_SEL ;
 int PRCM_DSI_PLLOUT_SEL_PHI ;
 int PRCM_DSI_PLLOUT_SEL_PHI_2 ;
 int PRCM_DSI_PLLOUT_SEL_PHI_4 ;
 int PRCM_PLLDSI_FREQ ;
 int clock_divider (int ,unsigned long) ;
 int clock_rate (int ) ;
 TYPE_1__* dsiclk ;
 int pll_rate (int ,int ,int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void set_dsiclk_rate(u8 n, unsigned long rate)
{
 u32 val;
 u32 div;

 div = clock_divider(pll_rate(PRCM_PLLDSI_FREQ,
   clock_rate(PRCMU_HDMICLK), PLL_RAW), rate);

 dsiclk[n].divsel = (div == 1) ? PRCM_DSI_PLLOUT_SEL_PHI :
      (div == 2) ? PRCM_DSI_PLLOUT_SEL_PHI_2 :
                 PRCM_DSI_PLLOUT_SEL_PHI_4;

 val = readl(PRCM_DSI_PLLOUT_SEL);
 val &= ~dsiclk[n].divsel_mask;
 val |= (dsiclk[n].divsel << dsiclk[n].divsel_shift);
 writel(val, PRCM_DSI_PLLOUT_SEL);
}
