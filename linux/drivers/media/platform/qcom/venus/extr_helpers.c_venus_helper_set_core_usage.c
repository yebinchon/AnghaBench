
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int core; } ;
struct hfi_videocores_usage_type {int video_core_enable_mask; } ;


 int HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE ;
 int IS_V4 (int ) ;
 int hfi_session_set_property (struct venus_inst*,int const,struct hfi_videocores_usage_type*) ;

int venus_helper_set_core_usage(struct venus_inst *inst, u32 usage)
{
 const u32 ptype = HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE;
 struct hfi_videocores_usage_type cu;

 if (!IS_V4(inst->core))
  return 0;

 cu.video_core_enable_mask = usage;

 return hfi_session_set_property(inst, ptype, &cu);
}
