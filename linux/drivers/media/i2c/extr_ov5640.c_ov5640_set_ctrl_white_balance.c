
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {TYPE_2__* blue_balance; TYPE_1__* red_balance; } ;
struct ov5640_dev {TYPE_3__ ctrls; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {int val; } ;


 int BIT (int ) ;
 int OV5640_REG_AWB_B_GAIN ;
 int OV5640_REG_AWB_MANUAL_CTRL ;
 int OV5640_REG_AWB_R_GAIN ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int) ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int ) ;

__attribute__((used)) static int ov5640_set_ctrl_white_balance(struct ov5640_dev *sensor, int awb)
{
 int ret;

 ret = ov5640_mod_reg(sensor, OV5640_REG_AWB_MANUAL_CTRL,
        BIT(0), awb ? 0 : 1);
 if (ret)
  return ret;

 if (!awb) {
  u16 red = (u16)sensor->ctrls.red_balance->val;
  u16 blue = (u16)sensor->ctrls.blue_balance->val;

  ret = ov5640_write_reg16(sensor, OV5640_REG_AWB_R_GAIN, red);
  if (ret)
   return ret;
  ret = ov5640_write_reg16(sensor, OV5640_REG_AWB_B_GAIN, blue);
 }

 return ret;
}
