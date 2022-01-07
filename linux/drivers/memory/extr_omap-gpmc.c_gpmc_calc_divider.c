
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpmc_ps_to_ticks (unsigned int) ;

int gpmc_calc_divider(unsigned int sync_clk)
{
 int div = gpmc_ps_to_ticks(sync_clk);

 if (div > 4)
  return -1;
 if (div <= 0)
  div = 1;

 return div;
}
