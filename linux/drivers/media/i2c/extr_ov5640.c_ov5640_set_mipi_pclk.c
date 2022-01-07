
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5640_mode_info {scalar_t__ dn_mode; scalar_t__ id; } ;
struct ov5640_dev {struct ov5640_mode_info* current_mode; } ;


 int OV5640_MIPI_DIV_PCLK ;
 int OV5640_MIPI_DIV_SCLK ;
 scalar_t__ OV5640_MODE_720P_1280_720 ;
 int OV5640_PLL_CTRL0_MIPI_MODE_8BIT ;
 int OV5640_PLL_CTRL3_PLL_ROOT_DIV_2 ;
 int OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS ;
 int OV5640_REG_SC_PLL_CTRL0 ;
 int OV5640_REG_SC_PLL_CTRL1 ;
 int OV5640_REG_SC_PLL_CTRL2 ;
 int OV5640_REG_SC_PLL_CTRL3 ;
 int OV5640_REG_SYS_ROOT_DIVIDER ;
 scalar_t__ SCALING ;
 int ov5640_calc_sys_clk (struct ov5640_dev*,unsigned long,int*,int*,int*) ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;

__attribute__((used)) static int ov5640_set_mipi_pclk(struct ov5640_dev *sensor,
    unsigned long rate)
{
 const struct ov5640_mode_info *mode = sensor->current_mode;
 u8 prediv, mult, sysdiv;
 u8 mipi_div;
 int ret;






 if (mode->dn_mode == SCALING ||
    (mode->id == OV5640_MODE_720P_1280_720))
  mipi_div = OV5640_MIPI_DIV_SCLK;
 else
  mipi_div = OV5640_MIPI_DIV_PCLK;

 ov5640_calc_sys_clk(sensor, rate, &prediv, &mult, &sysdiv);

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL0,
        0x0f, OV5640_PLL_CTRL0_MIPI_MODE_8BIT);

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL1,
        0xff, sysdiv << 4 | mipi_div);
 if (ret)
  return ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL2, 0xff, mult);
 if (ret)
  return ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL3,
        0x1f, OV5640_PLL_CTRL3_PLL_ROOT_DIV_2 | prediv);
 if (ret)
  return ret;

 return ov5640_mod_reg(sensor, OV5640_REG_SYS_ROOT_DIVIDER,
         0x30, OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS);
}
