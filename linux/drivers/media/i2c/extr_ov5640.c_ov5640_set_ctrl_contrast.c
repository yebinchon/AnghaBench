
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int BIT (int) ;
 int OV5640_REG_SDE_CTRL0 ;
 int OV5640_REG_SDE_CTRL5 ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int ) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_ctrl_contrast(struct ov5640_dev *sensor, int value)
{
 int ret;

 if (value) {
  ret = ov5640_mod_reg(sensor, OV5640_REG_SDE_CTRL0,
         BIT(2), BIT(2));
  if (ret)
   return ret;
  ret = ov5640_write_reg(sensor, OV5640_REG_SDE_CTRL5,
           value & 0xff);
 } else {
  ret = ov5640_mod_reg(sensor, OV5640_REG_SDE_CTRL0, BIT(2), 0);
 }

 return ret;
}
