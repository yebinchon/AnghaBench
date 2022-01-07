
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PLL_RAW ;
 int PRCMU_HDMICLK ;
 int PRCM_PLLDSI_FREQ ;
 int clock_divider (unsigned long,unsigned long) ;
 int clock_rate (int ) ;
 unsigned long pll_rate (int ,int ,int ) ;

__attribute__((used)) static long round_dsiclk_rate(unsigned long rate)
{
 u32 div;
 unsigned long src_rate;
 long rounded_rate;

 src_rate = pll_rate(PRCM_PLLDSI_FREQ, clock_rate(PRCMU_HDMICLK),
  PLL_RAW);
 div = clock_divider(src_rate, rate);
 rounded_rate = (src_rate / ((div > 2) ? 4 : div));

 return rounded_rate;
}
