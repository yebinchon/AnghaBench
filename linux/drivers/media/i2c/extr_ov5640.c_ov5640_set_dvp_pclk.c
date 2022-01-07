
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_SC_PLL_CTRL0 ;
 int OV5640_REG_SC_PLL_CTRL1 ;
 int OV5640_REG_SC_PLL_CTRL2 ;
 int OV5640_REG_SC_PLL_CTRL3 ;
 int OV5640_REG_SYS_ROOT_DIVIDER ;
 int ilog2 (int) ;
 int ov5640_calc_pclk (struct ov5640_dev*,unsigned long,int*,int*,int*,int*,int*,int*) ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;

__attribute__((used)) static int ov5640_set_dvp_pclk(struct ov5640_dev *sensor, unsigned long rate)
{
 u8 prediv, mult, sysdiv, pll_rdiv, bit_div, pclk_div;
 int ret;

 ov5640_calc_pclk(sensor, rate, &prediv, &mult, &sysdiv, &pll_rdiv,
    &bit_div, &pclk_div);

 if (bit_div == 2)
  bit_div = 8;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL0,
        0x0f, bit_div);
 if (ret)
  return ret;





 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL1,
        0xff, sysdiv << 4);
 if (ret)
  return ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL2,
        0xff, mult);
 if (ret)
  return ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL3,
        0x1f, prediv | ((pll_rdiv - 1) << 4));
 if (ret)
  return ret;

 return ov5640_mod_reg(sensor, OV5640_REG_SYS_ROOT_DIVIDER, 0x30,
         (ilog2(pclk_div) << 4));
}
