
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long clk_get_rate (int ) ;
 int gpmc_l3_clk ;

__attribute__((used)) static unsigned long gpmc_get_fclk_period(void)
{
 unsigned long rate = clk_get_rate(gpmc_l3_clk);

 rate /= 1000;
 rate = 1000000000 / rate;

 return rate;
}
