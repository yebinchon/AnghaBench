
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef unsigned long u64 ;
typedef int u32 ;
struct TYPE_2__ {int pllsw; scalar_t__ clk38div; int branch; scalar_t__ offset; } ;


 size_t PRCMU_SGACLK ;
 int PRCM_CLK_MGT_CLK38 ;
 TYPE_1__* clk_mgt ;
 int clock_divider (unsigned long,unsigned long) ;
 unsigned long clock_source_rate (int,int ) ;
 int do_div (unsigned long,int) ;
 unsigned long min (int,int) ;
 scalar_t__ prcmu_base ;
 int readl (scalar_t__) ;

__attribute__((used)) static long round_clock_rate(u8 clock, unsigned long rate)
{
 u32 val;
 u32 div;
 unsigned long src_rate;
 long rounded_rate;

 val = readl(prcmu_base + clk_mgt[clock].offset);
 src_rate = clock_source_rate((val | clk_mgt[clock].pllsw),
  clk_mgt[clock].branch);
 div = clock_divider(src_rate, rate);
 if (val & PRCM_CLK_MGT_CLK38) {
  if (clk_mgt[clock].clk38div) {
   if (div > 2)
    div = 2;
  } else {
   div = 1;
  }
 } else if ((clock == PRCMU_SGACLK) && (div == 3)) {
  u64 r = (src_rate * 10);

  (void)do_div(r, 25);
  if (r <= rate)
   return (unsigned long)r;
 }
 rounded_rate = (src_rate / min(div, (u32)31));

 return rounded_rate;
}
