
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gpmc_get_fclk_period () ;
 unsigned long gpmc_ps_to_ticks (unsigned int) ;

__attribute__((used)) static unsigned int gpmc_round_ps_to_ticks(unsigned int time_ps)
{
 unsigned long ticks = gpmc_ps_to_ticks(time_ps);

 return ticks * gpmc_get_fclk_period();
}
