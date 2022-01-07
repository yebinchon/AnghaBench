
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int core; } ;
struct hfi_video_work_mode {int video_work_mode; } ;


 int HFI_PROPERTY_PARAM_WORK_MODE ;
 int IS_V4 (int ) ;
 int hfi_session_set_property (struct venus_inst*,int const,struct hfi_video_work_mode*) ;

int venus_helper_set_work_mode(struct venus_inst *inst, u32 mode)
{
 const u32 ptype = HFI_PROPERTY_PARAM_WORK_MODE;
 struct hfi_video_work_mode wm;

 if (!IS_V4(inst->core))
  return 0;

 wm.video_work_mode = mode;

 return hfi_session_set_property(inst, ptype, &wm);
}
