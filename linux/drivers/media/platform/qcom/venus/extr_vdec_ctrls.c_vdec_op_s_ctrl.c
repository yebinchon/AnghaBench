
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_controls {int level; int profile; int post_loop_deb_mode; } ;
struct TYPE_2__ {struct vdec_controls dec; } ;
struct venus_inst {TYPE_1__ controls; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;






 struct venus_inst* ctrl_to_inst (struct v4l2_ctrl*) ;

__attribute__((used)) static int vdec_op_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct venus_inst *inst = ctrl_to_inst(ctrl);
 struct vdec_controls *ctr = &inst->controls.dec;

 switch (ctrl->id) {
 case 133:
  ctr->post_loop_deb_mode = ctrl->val;
  break;
 case 131:
 case 129:
 case 128:
  ctr->profile = ctrl->val;
  break;
 case 132:
 case 130:
  ctr->level = ctrl->val;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
