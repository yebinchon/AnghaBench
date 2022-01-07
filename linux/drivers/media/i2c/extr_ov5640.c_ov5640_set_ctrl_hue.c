
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int BIT (int ) ;
 int OV5640_REG_SDE_CTRL0 ;
 int OV5640_REG_SDE_CTRL1 ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int ) ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_ctrl_hue(struct ov5640_dev *sensor, int value)
{
 int ret;

 if (value) {
  ret = ov5640_mod_reg(sensor, OV5640_REG_SDE_CTRL0,
         BIT(0), BIT(0));
  if (ret)
   return ret;
  ret = ov5640_write_reg16(sensor, OV5640_REG_SDE_CTRL1, value);
 } else {
  ret = ov5640_mod_reg(sensor, OV5640_REG_SDE_CTRL0, BIT(0), 0);
 }

 return ret;
}
