
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int BIT (int) ;
 int OV5640_REG_HZ5060_CTRL00 ;
 int OV5640_REG_HZ5060_CTRL01 ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int ) ;

__attribute__((used)) static int ov5640_set_ctrl_light_freq(struct ov5640_dev *sensor, int value)
{
 int ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_HZ5060_CTRL01, BIT(7),
        (value == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) ?
        0 : BIT(7));
 if (ret)
  return ret;

 return ov5640_mod_reg(sensor, OV5640_REG_HZ5060_CTRL00, BIT(2),
         (value == V4L2_CID_POWER_LINE_FREQUENCY_50HZ) ?
         BIT(2) : 0);
}
