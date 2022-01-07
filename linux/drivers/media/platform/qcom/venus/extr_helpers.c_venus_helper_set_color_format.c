
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {scalar_t__ session_type; } ;


 int EINVAL ;
 int HFI_BUFFER_INPUT ;
 int HFI_BUFFER_OUTPUT ;
 scalar_t__ VIDC_SESSION_TYPE_DEC ;
 scalar_t__ VIDC_SESSION_TYPE_ENC ;
 int to_hfi_raw_fmt (int ) ;
 int venus_helper_set_raw_format (struct venus_inst*,int ,int ) ;

int venus_helper_set_color_format(struct venus_inst *inst, u32 pixfmt)
{
 u32 hfi_format, buftype;

 if (inst->session_type == VIDC_SESSION_TYPE_DEC)
  buftype = HFI_BUFFER_OUTPUT;
 else if (inst->session_type == VIDC_SESSION_TYPE_ENC)
  buftype = HFI_BUFFER_INPUT;
 else
  return -EINVAL;

 hfi_format = to_hfi_raw_fmt(pixfmt);
 if (!hfi_format)
  return -EINVAL;

 return venus_helper_set_raw_format(inst, hfi_format, buftype);
}
