
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PLL_DIV ;
 int PLL_FIX ;
 int PRCM_ARMCLKFIX_MGT ;
 int PRCM_ARM_CHGCLKREQ ;
 int PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ ;
 int PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL ;
 int PRCM_CLK_MGT_CLKPLLDIV_MASK ;
 int PRCM_PLLARM_FREQ ;
 int PRCM_PLLDDR_FREQ ;
 int ROOT_CLOCK_RATE ;
 unsigned long pll_rate (int ,int ,int ) ;
 int readl (int ) ;

__attribute__((used)) static unsigned long armss_rate(void)
{
 u32 r;
 unsigned long rate;

 r = readl(PRCM_ARM_CHGCLKREQ);

 if (r & PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ) {


  rate = pll_rate(PRCM_PLLDDR_FREQ, ROOT_CLOCK_RATE, PLL_FIX);


  if (!(r & PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL))
   rate /= 2;


  r = readl(PRCM_ARMCLKFIX_MGT);
  r &= PRCM_CLK_MGT_CLKPLLDIV_MASK;
  rate /= r;

 } else {
  rate = pll_rate(PRCM_PLLARM_FREQ, ROOT_CLOCK_RATE, PLL_DIV);
 }

 return rate;
}
