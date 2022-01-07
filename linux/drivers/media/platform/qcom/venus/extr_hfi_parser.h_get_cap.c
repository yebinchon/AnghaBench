
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_inst {int session_type; int hfi_codec; struct venus_core* core; } ;
struct venus_core {int dummy; } ;
struct venus_caps {unsigned int num_caps; struct hfi_capability* caps; } ;
struct hfi_capability {scalar_t__ capability_type; scalar_t__ min; scalar_t__ max; scalar_t__ step_size; } ;





 struct venus_caps* venus_caps_by_codec (struct venus_core*,int ,int ) ;

__attribute__((used)) static inline u32 get_cap(struct venus_inst *inst, u32 type, u32 which)
{
 struct venus_core *core = inst->core;
 struct hfi_capability *cap = ((void*)0);
 struct venus_caps *caps;
 unsigned int i;

 caps = venus_caps_by_codec(core, inst->hfi_codec, inst->session_type);
 if (!caps)
  return 0;

 for (i = 0; i < caps->num_caps; i++) {
  if (caps->caps[i].capability_type == type) {
   cap = &caps->caps[i];
   break;
  }
 }

 if (!cap)
  return 0;

 switch (which) {
 case 129:
  return cap->min;
 case 130:
  return cap->max;
 case 128:
  return cap->step_size;
 default:
  break;
 }

 return 0;
}
