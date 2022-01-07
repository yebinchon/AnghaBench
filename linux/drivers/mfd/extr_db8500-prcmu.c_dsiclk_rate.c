
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int divsel_mask; int divsel_shift; int divsel; } ;


 int PLL_RAW ;
 int PRCMU_HDMICLK ;
 int PRCM_DSI_PLLOUT_SEL ;
 int PRCM_DSI_PLLOUT_SEL_OFF ;



 int PRCM_PLLDSI_FREQ ;
 int clock_rate (int ) ;
 TYPE_1__* dsiclk ;
 int pll_rate (int ,int ,int ) ;
 int readl (int ) ;

__attribute__((used)) static unsigned long dsiclk_rate(u8 n)
{
 u32 divsel;
 u32 div = 1;

 divsel = readl(PRCM_DSI_PLLOUT_SEL);
 divsel = ((divsel & dsiclk[n].divsel_mask) >> dsiclk[n].divsel_shift);

 if (divsel == PRCM_DSI_PLLOUT_SEL_OFF)
  divsel = dsiclk[n].divsel;
 else
  dsiclk[n].divsel = divsel;

 switch (divsel) {
 case 128:
  div *= 2;

 case 129:
  div *= 2;

 case 130:
  return pll_rate(PRCM_PLLDSI_FREQ, clock_rate(PRCMU_HDMICLK),
   PLL_RAW) / div;
 default:
  return 0;
 }
}
