
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;
struct hfi_buffer_alloc_mode {int type; int mode; } ;


 int HFI_BUFFER_MODE_DYNAMIC ;
 int HFI_BUFFER_OUTPUT ;
 int HFI_BUFFER_OUTPUT2 ;
 int HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE ;
 int hfi_session_set_property (struct venus_inst*,int const,struct hfi_buffer_alloc_mode*) ;
 int is_dynamic_bufmode (struct venus_inst*) ;

int venus_helper_set_dyn_bufmode(struct venus_inst *inst)
{
 const u32 ptype = HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE;
 struct hfi_buffer_alloc_mode mode;
 int ret;

 if (!is_dynamic_bufmode(inst))
  return 0;

 mode.type = HFI_BUFFER_OUTPUT;
 mode.mode = HFI_BUFFER_MODE_DYNAMIC;

 ret = hfi_session_set_property(inst, ptype, &mode);
 if (ret)
  return ret;

 mode.type = HFI_BUFFER_OUTPUT2;

 return hfi_session_set_property(inst, ptype, &mode);
}
