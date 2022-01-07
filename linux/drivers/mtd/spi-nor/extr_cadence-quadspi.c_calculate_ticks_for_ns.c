
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;

__attribute__((used)) static unsigned int calculate_ticks_for_ns(const unsigned int ref_clk_hz,
        const unsigned int ns_val)
{
 unsigned int ticks;

 ticks = ref_clk_hz / 1000;
 ticks = DIV_ROUND_UP(ticks * ns_val, 1000000);

 return ticks;
}
