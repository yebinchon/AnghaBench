
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct ov5640_dev {unsigned long xclk_freq; } ;



__attribute__((used)) static unsigned long ov5640_compute_sys_clk(struct ov5640_dev *sensor,
         u8 pll_prediv, u8 pll_mult,
         u8 sysdiv)
{
 unsigned long sysclk = sensor->xclk_freq / pll_prediv * pll_mult;


 if (sysclk / 1000000 > 1000)
  return 0;

 return sysclk / sysdiv;
}
