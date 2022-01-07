
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int gpmc_calc_divider (int) ;
 int gpmc_ps_to_ticks (int) ;
 int gpmc_ticks_to_ps (int) ;

__attribute__((used)) static u32 gpmc_round_ps_to_sync_clk(u32 time_ps, u32 sync_clk)
{
 u32 temp;
 int div;

 div = gpmc_calc_divider(sync_clk);
 temp = gpmc_ps_to_ticks(time_ps);
 temp = (temp + div - 1) / div;
 return gpmc_ticks_to_ps(temp * div);
}
