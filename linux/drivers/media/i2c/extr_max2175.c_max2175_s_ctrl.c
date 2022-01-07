
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int val; int id; int handler; } ;
struct max2175 {int dummy; } ;





 struct max2175* max2175_from_ctrl_hdl (int ) ;
 int max2175_i2s_enable (struct max2175*,int ) ;
 int max2175_s_ctrl_rx_mode (struct max2175*,int ) ;
 int max2175_set_hsls (struct max2175*,int ) ;
 int mxm_dbg (struct max2175*,char*,int ,int ) ;

__attribute__((used)) static int max2175_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct max2175 *ctx = max2175_from_ctrl_hdl(ctrl->handler);

 mxm_dbg(ctx, "s_ctrl: id 0x%x, val %u\n", ctrl->id, ctrl->val);
 switch (ctrl->id) {
 case 129:
  max2175_i2s_enable(ctx, ctrl->val);
  break;
 case 130:
  max2175_set_hsls(ctx, ctrl->val);
  break;
 case 128:
  max2175_s_ctrl_rx_mode(ctx, ctrl->val);
  break;
 }

 return 0;
}
