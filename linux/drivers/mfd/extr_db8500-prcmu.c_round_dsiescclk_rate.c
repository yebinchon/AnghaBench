
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PRCMU_TVCLK ;
 int clock_divider (unsigned long,unsigned long) ;
 unsigned long clock_rate (int ) ;
 unsigned long min (int ,int ) ;

__attribute__((used)) static long round_dsiescclk_rate(unsigned long rate)
{
 u32 div;
 unsigned long src_rate;
 long rounded_rate;

 src_rate = clock_rate(PRCMU_TVCLK);
 div = clock_divider(src_rate, rate);
 rounded_rate = (src_rate / min(div, (u32)255));

 return rounded_rate;
}
