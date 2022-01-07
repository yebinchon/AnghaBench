
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct venus_inst {int dummy; } ;
struct hfi_buffer_size_actual {void* size; void* type; } ;


 void* HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL ;
 int hfi_session_set_property (struct venus_inst*,void* const,struct hfi_buffer_size_actual*) ;

int venus_helper_set_bufsize(struct venus_inst *inst, u32 bufsize, u32 buftype)
{
 const u32 ptype = HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL;
 struct hfi_buffer_size_actual bufsz;

 bufsz.type = buftype;
 bufsz.size = bufsize;

 return hfi_session_set_property(inst, ptype, &bufsz);
}
