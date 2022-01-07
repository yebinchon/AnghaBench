
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct venus_inst {int dummy; } ;
struct hfi_uncompressed_format_select {void* format; void* buffer_type; } ;


 void* HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT ;
 int hfi_session_set_property (struct venus_inst*,void* const,struct hfi_uncompressed_format_select*) ;

int venus_helper_set_raw_format(struct venus_inst *inst, u32 hfi_format,
    u32 buftype)
{
 const u32 ptype = HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT;
 struct hfi_uncompressed_format_select fmt;

 fmt.buffer_type = buftype;
 fmt.format = hfi_format;

 return hfi_session_set_property(inst, ptype, &fmt);
}
