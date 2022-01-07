
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_nemc {int clk; } ;


 unsigned long clk_get_rate (int ) ;
 int div64_ul (unsigned long long,unsigned long) ;

__attribute__((used)) static uint32_t jz4780_nemc_clk_period(struct jz4780_nemc *nemc)
{
 unsigned long rate;

 rate = clk_get_rate(nemc->clk);
 if (!rate)
  return 0;


 return div64_ul(1000000000000ull, rate);
}
