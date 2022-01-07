
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;
struct hfi_framesize {unsigned int width; unsigned int height; int buffer_type; } ;


 int HFI_BUFFER_INPUT ;
 int HFI_PROPERTY_PARAM_FRAME_SIZE ;
 int hfi_session_set_property (struct venus_inst*,int ,struct hfi_framesize*) ;

int venus_helper_set_input_resolution(struct venus_inst *inst,
          unsigned int width, unsigned int height)
{
 u32 ptype = HFI_PROPERTY_PARAM_FRAME_SIZE;
 struct hfi_framesize fs;

 fs.buffer_type = HFI_BUFFER_INPUT;
 fs.width = width;
 fs.height = height;

 return hfi_session_set_property(inst, ptype, &fs);
}
