
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5670 {int dummy; } ;


 int OV5670_REG_B_DGTL_GAIN ;
 int OV5670_REG_G_DGTL_GAIN ;
 int OV5670_REG_R_DGTL_GAIN ;
 int OV5670_REG_VALUE_16BIT ;
 int ov5670_write_reg (struct ov5670*,int ,int ,int ) ;

__attribute__((used)) static int ov5670_update_digital_gain(struct ov5670 *ov5670, u32 d_gain)
{
 int ret;

 ret = ov5670_write_reg(ov5670, OV5670_REG_R_DGTL_GAIN,
          OV5670_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 ret = ov5670_write_reg(ov5670, OV5670_REG_G_DGTL_GAIN,
          OV5670_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 return ov5670_write_reg(ov5670, OV5670_REG_B_DGTL_GAIN,
    OV5670_REG_VALUE_16BIT, d_gain);
}
