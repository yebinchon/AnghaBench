
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gpmc_clk_domain { ____Placeholder_gpmc_clk_domain } gpmc_clk_domain ;


 unsigned int gpmc_get_clk_period (int,int) ;

__attribute__((used)) static unsigned int gpmc_clk_ticks_to_ns(unsigned int ticks, int cs,
      enum gpmc_clk_domain cd)
{
 return ticks * gpmc_get_clk_period(cs, cd) / 1000;
}
