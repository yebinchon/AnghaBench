
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct s5p_mfc_ctx {int slice_interface; int loop_filter_mpeg4; int display_delay_enable; int display_delay; } ;


 int EINVAL ;




 struct s5p_mfc_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int mfc_err (char*,int) ;

__attribute__((used)) static int s5p_mfc_dec_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_mfc_ctx *ctx = ctrl_to_ctx(ctrl);

 switch (ctrl->id) {
 case 131:
  ctx->display_delay = ctrl->val;
  break;
 case 130:
  ctx->display_delay_enable = ctrl->val;
  break;
 case 129:
  ctx->loop_filter_mpeg4 = ctrl->val;
  break;
 case 128:
  ctx->slice_interface = ctrl->val;
  break;
 default:
  mfc_err("Invalid control 0x%08x\n", ctrl->id);
  return -EINVAL;
 }
 return 0;
}
