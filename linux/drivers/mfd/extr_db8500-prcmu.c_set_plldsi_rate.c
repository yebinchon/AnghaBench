
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long u32 ;


 int EINVAL ;
 unsigned long MAX_PLL_VCO_RATE ;
 unsigned long MIN_PLL_VCO_RATE ;
 int PRCMU_HDMICLK ;
 int PRCM_PLLDSI_FREQ ;
 unsigned long PRCM_PLL_FREQ_D_SHIFT ;
 int PRCM_PLL_FREQ_N_SHIFT ;
 unsigned long PRCM_PLL_FREQ_R_SHIFT ;
 unsigned long clock_rate (int ) ;
 int do_div (int,unsigned long) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int set_plldsi_rate(unsigned long rate)
{
 unsigned long src_rate;
 unsigned long rem;
 u32 pll_freq = 0;
 u32 r;

 src_rate = clock_rate(PRCMU_HDMICLK);
 rem = rate;

 for (r = 7; (rem > 0) && (r > 0); r--) {
  u64 d;
  u64 hwrate;

  d = (r * rate);
  (void)do_div(d, src_rate);
  if (d < 6)
   d = 6;
  else if (d > 255)
   d = 255;
  hwrate = (d * src_rate);
  if (((2 * hwrate) < (r * MIN_PLL_VCO_RATE)) ||
   ((r * MAX_PLL_VCO_RATE) < (2 * hwrate)))
   continue;
  (void)do_div(hwrate, r);
  if (rate < hwrate) {
   if (pll_freq == 0)
    pll_freq = (((u32)d << PRCM_PLL_FREQ_D_SHIFT) |
     (r << PRCM_PLL_FREQ_R_SHIFT));
   break;
  }
  if ((rate - hwrate) < rem) {
   rem = (rate - hwrate);
   pll_freq = (((u32)d << PRCM_PLL_FREQ_D_SHIFT) |
    (r << PRCM_PLL_FREQ_R_SHIFT));
  }
 }
 if (pll_freq == 0)
  return -EINVAL;

 pll_freq |= (1 << PRCM_PLL_FREQ_N_SHIFT);
 writel(pll_freq, PRCM_PLLDSI_FREQ);

 return 0;
}
