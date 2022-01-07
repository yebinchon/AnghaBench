
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gpmc_clk_domain { ____Placeholder_gpmc_clk_domain } gpmc_clk_domain ;


 unsigned long gpmc_get_clk_period (int,int) ;

__attribute__((used)) static unsigned int gpmc_ns_to_clk_ticks(unsigned int time_ns, int cs,
      enum gpmc_clk_domain cd)
{
 unsigned long tick_ps;


 tick_ps = gpmc_get_clk_period(cs, cd);

 return (time_ns * 1000 + tick_ps - 1) / tick_ps;
}
