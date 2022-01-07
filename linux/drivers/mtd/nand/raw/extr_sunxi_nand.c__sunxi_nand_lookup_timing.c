
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u32 ;
typedef scalar_t__ s32 ;


 scalar_t__ DIV_ROUND_UP (scalar_t__ const,scalar_t__ const) ;
 int EINVAL ;

__attribute__((used)) static int _sunxi_nand_lookup_timing(const s32 *lut, int lut_size, u32 duration,
  u32 clk_period)
{
 u32 clk_cycles = DIV_ROUND_UP(duration, clk_period);
 int i;

 for (i = 0; i < lut_size; i++) {
  if (clk_cycles <= lut[i])
   return i;
 }


 return -EINVAL;
}
