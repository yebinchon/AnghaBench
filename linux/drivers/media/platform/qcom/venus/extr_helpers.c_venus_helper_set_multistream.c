
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;
struct hfi_multi_stream {int enable; int buffer_type; int member_0; } ;


 int HFI_BUFFER_OUTPUT ;
 int HFI_BUFFER_OUTPUT2 ;
 int HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM ;
 int hfi_session_set_property (struct venus_inst*,int ,struct hfi_multi_stream*) ;

int venus_helper_set_multistream(struct venus_inst *inst, bool out_en,
     bool out2_en)
{
 struct hfi_multi_stream multi = {0};
 u32 ptype = HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM;
 int ret;

 multi.buffer_type = HFI_BUFFER_OUTPUT;
 multi.enable = out_en;

 ret = hfi_session_set_property(inst, ptype, &multi);
 if (ret)
  return ret;

 multi.buffer_type = HFI_BUFFER_OUTPUT2;
 multi.enable = out2_en;

 return hfi_session_set_property(inst, ptype, &multi);
}
