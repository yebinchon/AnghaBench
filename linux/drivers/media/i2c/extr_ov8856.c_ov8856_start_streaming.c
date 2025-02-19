
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ov8856_reg_list {int dummy; } ;
struct TYPE_5__ {int ctrl_handler; } ;
struct ov8856 {TYPE_2__ sd; TYPE_1__* cur_mode; } ;
struct i2c_client {int dev; } ;
struct TYPE_6__ {struct ov8856_reg_list reg_list; } ;
struct TYPE_4__ {int link_freq_index; struct ov8856_reg_list reg_list; } ;


 int OV8856_MODE_STREAMING ;
 int OV8856_REG_MODE_SELECT ;
 int OV8856_REG_VALUE_08BIT ;
 int __v4l2_ctrl_handler_setup (int ) ;
 int dev_err (int *,char*) ;
 TYPE_3__* link_freq_configs ;
 int ov8856_write_reg (struct ov8856*,int ,int ,int ) ;
 int ov8856_write_reg_list (struct ov8856*,struct ov8856_reg_list const*) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int ov8856_start_streaming(struct ov8856 *ov8856)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
 const struct ov8856_reg_list *reg_list;
 int link_freq_index, ret;

 link_freq_index = ov8856->cur_mode->link_freq_index;
 reg_list = &link_freq_configs[link_freq_index].reg_list;
 ret = ov8856_write_reg_list(ov8856, reg_list);
 if (ret) {
  dev_err(&client->dev, "failed to set plls");
  return ret;
 }

 reg_list = &ov8856->cur_mode->reg_list;
 ret = ov8856_write_reg_list(ov8856, reg_list);
 if (ret) {
  dev_err(&client->dev, "failed to set mode");
  return ret;
 }

 ret = __v4l2_ctrl_handler_setup(ov8856->sd.ctrl_handler);
 if (ret)
  return ret;

 ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
          OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
 if (ret) {
  dev_err(&client->dev, "failed to set stream");
  return ret;
 }

 return 0;
}
