
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov8856 {int dummy; } ;


 int OV8856_REG_MWB_B_GAIN ;
 int OV8856_REG_MWB_G_GAIN ;
 int OV8856_REG_MWB_R_GAIN ;
 int OV8856_REG_VALUE_16BIT ;
 int ov8856_write_reg (struct ov8856*,int ,int ,int ) ;

__attribute__((used)) static int ov8856_update_digital_gain(struct ov8856 *ov8856, u32 d_gain)
{
 int ret;

 ret = ov8856_write_reg(ov8856, OV8856_REG_MWB_R_GAIN,
          OV8856_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 ret = ov8856_write_reg(ov8856, OV8856_REG_MWB_G_GAIN,
          OV8856_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 return ov8856_write_reg(ov8856, OV8856_REG_MWB_B_GAIN,
    OV8856_REG_VALUE_16BIT, d_gain);
}
