
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ov5695 {int client; int ctrl_handler; TYPE_1__* cur_mode; } ;
struct TYPE_2__ {int reg_list; } ;


 int OV5695_MODE_STREAMING ;
 int OV5695_REG_CTRL_MODE ;
 int OV5695_REG_VALUE_08BIT ;
 int __v4l2_ctrl_handler_setup (int *) ;
 int ov5695_global_regs ;
 int ov5695_write_array (int ,int ) ;
 int ov5695_write_reg (int ,int ,int ,int ) ;

__attribute__((used)) static int __ov5695_start_stream(struct ov5695 *ov5695)
{
 int ret;

 ret = ov5695_write_array(ov5695->client, ov5695_global_regs);
 if (ret)
  return ret;
 ret = ov5695_write_array(ov5695->client, ov5695->cur_mode->reg_list);
 if (ret)
  return ret;


 ret = __v4l2_ctrl_handler_setup(&ov5695->ctrl_handler);
 if (ret)
  return ret;

 return ov5695_write_reg(ov5695->client, OV5695_REG_CTRL_MODE,
    OV5695_REG_VALUE_08BIT, OV5695_MODE_STREAMING);
}
