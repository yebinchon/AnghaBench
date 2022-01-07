
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct ov5640_dev {int dummy; } ;


 unsigned long OV5640_BIT_DIV ;
 unsigned long OV5640_PCLK_ROOT_DIV ;
 unsigned long OV5640_PLL_ROOT_DIV ;
 unsigned long ov5640_calc_sys_clk (struct ov5640_dev*,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static unsigned long ov5640_calc_pclk(struct ov5640_dev *sensor,
          unsigned long rate,
          u8 *pll_prediv, u8 *pll_mult, u8 *sysdiv,
          u8 *pll_rdiv, u8 *bit_div, u8 *pclk_div)
{
 unsigned long _rate = rate * OV5640_PLL_ROOT_DIV * OV5640_BIT_DIV *
    OV5640_PCLK_ROOT_DIV;

 _rate = ov5640_calc_sys_clk(sensor, _rate, pll_prediv, pll_mult,
        sysdiv);
 *pll_rdiv = OV5640_PLL_ROOT_DIV;
 *bit_div = OV5640_BIT_DIV;
 *pclk_div = OV5640_PCLK_ROOT_DIV;

 return _rate / *pll_rdiv / *bit_div / *pclk_div;
}
