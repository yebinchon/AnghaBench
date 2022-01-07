
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imx319_reg_list {int num_of_regs; int regs; } ;
struct TYPE_4__ {int ctrl_handler; } ;
struct imx319 {TYPE_2__ sd; TYPE_1__* cur_mode; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {struct imx319_reg_list reg_list; } ;


 int IMX319_MODE_STREAMING ;
 int IMX319_REG_DPGA_USE_GLOBAL_GAIN ;
 int IMX319_REG_MODE_SELECT ;
 int __v4l2_ctrl_handler_setup (int ) ;
 int dev_err (int *,char*) ;
 struct imx319_reg_list imx319_global_setting ;
 int imx319_write_reg (struct imx319*,int ,int,int) ;
 int imx319_write_regs (struct imx319*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int imx319_start_streaming(struct imx319 *imx319)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx319->sd);
 const struct imx319_reg_list *reg_list;
 int ret;


 reg_list = &imx319_global_setting;
 ret = imx319_write_regs(imx319, reg_list->regs, reg_list->num_of_regs);
 if (ret) {
  dev_err(&client->dev, "failed to set global settings");
  return ret;
 }


 reg_list = &imx319->cur_mode->reg_list;
 ret = imx319_write_regs(imx319, reg_list->regs, reg_list->num_of_regs);
 if (ret) {
  dev_err(&client->dev, "failed to set mode");
  return ret;
 }


 ret = imx319_write_reg(imx319, IMX319_REG_DPGA_USE_GLOBAL_GAIN, 1, 1);
 if (ret)
  return ret;


 ret = __v4l2_ctrl_handler_setup(imx319->sd.ctrl_handler);
 if (ret)
  return ret;

 return imx319_write_reg(imx319, IMX319_REG_MODE_SELECT,
    1, IMX319_MODE_STREAMING);
}
