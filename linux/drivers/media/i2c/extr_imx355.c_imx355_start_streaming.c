
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imx355_reg_list {int num_of_regs; int regs; } ;
struct TYPE_4__ {int ctrl_handler; } ;
struct imx355 {TYPE_2__ sd; TYPE_1__* cur_mode; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {struct imx355_reg_list reg_list; } ;


 int IMX355_MODE_STREAMING ;
 int IMX355_REG_DPGA_USE_GLOBAL_GAIN ;
 int IMX355_REG_MODE_SELECT ;
 int __v4l2_ctrl_handler_setup (int ) ;
 int dev_err (int *,char*) ;
 struct imx355_reg_list imx355_global_setting ;
 int imx355_write_reg (struct imx355*,int ,int,int) ;
 int imx355_write_regs (struct imx355*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int imx355_start_streaming(struct imx355 *imx355)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx355->sd);
 const struct imx355_reg_list *reg_list;
 int ret;


 reg_list = &imx355_global_setting;
 ret = imx355_write_regs(imx355, reg_list->regs, reg_list->num_of_regs);
 if (ret) {
  dev_err(&client->dev, "failed to set global settings");
  return ret;
 }


 reg_list = &imx355->cur_mode->reg_list;
 ret = imx355_write_regs(imx355, reg_list->regs, reg_list->num_of_regs);
 if (ret) {
  dev_err(&client->dev, "failed to set mode");
  return ret;
 }


 ret = imx355_write_reg(imx355, IMX355_REG_DPGA_USE_GLOBAL_GAIN, 1, 1);
 if (ret)
  return ret;


 ret = __v4l2_ctrl_handler_setup(imx355->sd.ctrl_handler);
 if (ret)
  return ret;

 return imx355_write_reg(imx355, IMX355_REG_MODE_SELECT,
    1, IMX355_MODE_STREAMING);
}
