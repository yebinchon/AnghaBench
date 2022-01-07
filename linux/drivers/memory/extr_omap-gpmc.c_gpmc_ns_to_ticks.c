
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_CD_FCLK ;
 unsigned int gpmc_ns_to_clk_ticks (unsigned int,int ,int ) ;

__attribute__((used)) static unsigned int gpmc_ns_to_ticks(unsigned int time_ns)
{
 return gpmc_ns_to_clk_ticks(time_ns, 0, GPMC_CD_FCLK);
}
