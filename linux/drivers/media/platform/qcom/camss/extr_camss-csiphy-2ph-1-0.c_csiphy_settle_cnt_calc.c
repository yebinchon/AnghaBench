
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int div_u64 (long long,int) ;

__attribute__((used)) static u8 csiphy_settle_cnt_calc(u32 pixel_clock, u8 bpp, u8 num_lanes,
     u32 timer_clk_rate)
{
 u32 mipi_clock;
 u32 ui;
 u32 timer_period;
 u32 t_hs_prepare_max;
 u32 t_hs_prepare_zero_min;
 u32 t_hs_settle;
 u8 settle_cnt;

 mipi_clock = pixel_clock * bpp / (2 * num_lanes);
 ui = div_u64(1000000000000LL, mipi_clock);
 ui /= 2;
 t_hs_prepare_max = 85000 + 6 * ui;
 t_hs_prepare_zero_min = 145000 + 10 * ui;
 t_hs_settle = (t_hs_prepare_max + t_hs_prepare_zero_min) / 2;

 timer_period = div_u64(1000000000000LL, timer_clk_rate);
 settle_cnt = t_hs_settle / timer_period - 1;

 return settle_cnt;
}
