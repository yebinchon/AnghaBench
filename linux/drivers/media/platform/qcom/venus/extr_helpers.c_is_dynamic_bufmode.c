
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int session_type; int hfi_codec; struct venus_core* core; } ;
struct venus_core {int dummy; } ;
struct venus_caps {int cap_bufs_mode_dynamic; } ;


 scalar_t__ IS_V4 (struct venus_core*) ;
 struct venus_caps* venus_caps_by_codec (struct venus_core*,int ,int ) ;

__attribute__((used)) static bool is_dynamic_bufmode(struct venus_inst *inst)
{
 struct venus_core *core = inst->core;
 struct venus_caps *caps;





 if (IS_V4(core))
  return 1;

 caps = venus_caps_by_codec(core, inst->hfi_codec, inst->session_type);
 if (!caps)
  return 0;

 return caps->cap_bufs_mode_dynamic;
}
