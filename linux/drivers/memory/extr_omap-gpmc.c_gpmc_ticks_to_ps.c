
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gpmc_get_fclk_period () ;

__attribute__((used)) static unsigned int gpmc_ticks_to_ps(unsigned int ticks)
{
 return ticks * gpmc_get_fclk_period();
}
