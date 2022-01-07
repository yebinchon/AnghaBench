
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx258 {int dummy; } ;


 int IMX258_REG_B_DIGITAL_GAIN ;
 int IMX258_REG_GB_DIGITAL_GAIN ;
 int IMX258_REG_GR_DIGITAL_GAIN ;
 int IMX258_REG_R_DIGITAL_GAIN ;
 int IMX258_REG_VALUE_16BIT ;
 int imx258_write_reg (struct imx258*,int ,int ,int ) ;

__attribute__((used)) static int imx258_update_digital_gain(struct imx258 *imx258, u32 len, u32 val)
{
 int ret;

 ret = imx258_write_reg(imx258, IMX258_REG_GR_DIGITAL_GAIN,
    IMX258_REG_VALUE_16BIT,
    val);
 if (ret)
  return ret;
 ret = imx258_write_reg(imx258, IMX258_REG_GB_DIGITAL_GAIN,
    IMX258_REG_VALUE_16BIT,
    val);
 if (ret)
  return ret;
 ret = imx258_write_reg(imx258, IMX258_REG_R_DIGITAL_GAIN,
    IMX258_REG_VALUE_16BIT,
    val);
 if (ret)
  return ret;
 ret = imx258_write_reg(imx258, IMX258_REG_B_DIGITAL_GAIN,
    IMX258_REG_VALUE_16BIT,
    val);
 if (ret)
  return ret;
 return 0;
}
