
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long u32 ;


 unsigned long MAX_PLL_VCO_RATE ;
 unsigned long MIN_PLL_VCO_RATE ;
 int PRCMU_HDMICLK ;
 unsigned long clock_rate (int ) ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static long round_plldsi_rate(unsigned long rate)
{
 long rounded_rate = 0;
 unsigned long src_rate;
 unsigned long rem;
 u32 r;

 src_rate = clock_rate(PRCMU_HDMICLK);
 rem = rate;

 for (r = 7; (rem > 0) && (r > 0); r--) {
  u64 d;

  d = (r * rate);
  (void)do_div(d, src_rate);
  if (d < 6)
   d = 6;
  else if (d > 255)
   d = 255;
  d *= src_rate;
  if (((2 * d) < (r * MIN_PLL_VCO_RATE)) ||
   ((r * MAX_PLL_VCO_RATE) < (2 * d)))
   continue;
  (void)do_div(d, r);
  if (rate < d) {
   if (rounded_rate == 0)
    rounded_rate = (long)d;
   break;
  }
  if ((rate - d) < rem) {
   rem = (rate - d);
   rounded_rate = (long)d;
  }
 }
 return rounded_rate;
}
