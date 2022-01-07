
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov13858 {int dummy; } ;


 int OV13858_REG_B_MWB_GAIN ;
 int OV13858_REG_G_MWB_GAIN ;
 int OV13858_REG_R_MWB_GAIN ;
 int OV13858_REG_VALUE_16BIT ;
 int ov13858_write_reg (struct ov13858*,int ,int ,int ) ;

__attribute__((used)) static int ov13858_update_digital_gain(struct ov13858 *ov13858, u32 d_gain)
{
 int ret;

 ret = ov13858_write_reg(ov13858, OV13858_REG_B_MWB_GAIN,
    OV13858_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 ret = ov13858_write_reg(ov13858, OV13858_REG_G_MWB_GAIN,
    OV13858_REG_VALUE_16BIT, d_gain);
 if (ret)
  return ret;

 ret = ov13858_write_reg(ov13858, OV13858_REG_R_MWB_GAIN,
    OV13858_REG_VALUE_16BIT, d_gain);

 return ret;
}
