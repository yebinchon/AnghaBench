
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_CD_FCLK ;
 unsigned int gpmc_clk_ticks_to_ns (unsigned int,int ,int ) ;

unsigned int gpmc_ticks_to_ns(unsigned int ticks)
{
 return gpmc_clk_ticks_to_ns(ticks, 0, GPMC_CD_FCLK);
}
