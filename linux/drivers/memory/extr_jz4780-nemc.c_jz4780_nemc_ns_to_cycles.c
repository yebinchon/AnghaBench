
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_nemc {int clk_period; } ;



__attribute__((used)) static uint32_t jz4780_nemc_ns_to_cycles(struct jz4780_nemc *nemc, uint32_t ns)
{
 return ((ns * 1000) + nemc->clk_period - 1) / nemc->clk_period;
}
