
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int level; int profile; } ;
union hfi_get_property {TYPE_4__ profile_level; } ;
typedef int u32 ;
struct vdec_controls {int post_loop_deb_mode; int level; int profile; } ;
struct TYPE_5__ {struct vdec_controls dec; } ;
struct venus_inst {TYPE_3__* core; TYPE_1__ controls; } ;
struct v4l2_ctrl {int id; int val; } ;
struct hfi_buffer_requirements {int dummy; } ;
typedef enum hfi_version { ____Placeholder_hfi_version } hfi_version ;
struct TYPE_7__ {TYPE_2__* res; } ;
struct TYPE_6__ {int hfi_version; } ;


 int EINVAL ;
 int HFI_BUFFER_OUTPUT ;
 int HFI_BUFREQ_COUNT_MIN (struct hfi_buffer_requirements*,int) ;
 int HFI_PROPERTY_PARAM_PROFILE_LEVEL_CURRENT ;







 struct venus_inst* ctrl_to_inst (struct v4l2_ctrl*) ;
 int hfi_session_get_property (struct venus_inst*,int ,union hfi_get_property*) ;
 int venus_helper_get_bufreq (struct venus_inst*,int ,struct hfi_buffer_requirements*) ;

__attribute__((used)) static int vdec_op_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct venus_inst *inst = ctrl_to_inst(ctrl);
 struct vdec_controls *ctr = &inst->controls.dec;
 struct hfi_buffer_requirements bufreq;
 union hfi_get_property hprop;
 enum hfi_version ver = inst->core->res->hfi_version;
 u32 ptype = HFI_PROPERTY_PARAM_PROFILE_LEVEL_CURRENT;
 int ret;

 switch (ctrl->id) {
 case 131:
 case 129:
 case 128:
  ret = hfi_session_get_property(inst, ptype, &hprop);
  if (!ret)
   ctr->profile = hprop.profile_level.profile;
  ctrl->val = ctr->profile;
  break;
 case 132:
 case 130:
  ret = hfi_session_get_property(inst, ptype, &hprop);
  if (!ret)
   ctr->level = hprop.profile_level.level;
  ctrl->val = ctr->level;
  break;
 case 133:
  ctrl->val = ctr->post_loop_deb_mode;
  break;
 case 134:
  ret = venus_helper_get_bufreq(inst, HFI_BUFFER_OUTPUT, &bufreq);
  if (!ret)
   ctrl->val = HFI_BUFREQ_COUNT_MIN(&bufreq, ver);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
