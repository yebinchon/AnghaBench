
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;
struct hfi_buffer_count_actual {unsigned int count_actual; int type; } ;


 int HFI_BUFFER_INPUT ;
 int HFI_BUFFER_OUTPUT ;
 int HFI_BUFFER_OUTPUT2 ;
 int HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL ;
 int hfi_session_set_property (struct venus_inst*,int ,struct hfi_buffer_count_actual*) ;

int venus_helper_set_num_bufs(struct venus_inst *inst, unsigned int input_bufs,
         unsigned int output_bufs,
         unsigned int output2_bufs)
{
 u32 ptype = HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL;
 struct hfi_buffer_count_actual buf_count;
 int ret;

 buf_count.type = HFI_BUFFER_INPUT;
 buf_count.count_actual = input_bufs;

 ret = hfi_session_set_property(inst, ptype, &buf_count);
 if (ret)
  return ret;

 buf_count.type = HFI_BUFFER_OUTPUT;
 buf_count.count_actual = output_bufs;

 ret = hfi_session_set_property(inst, ptype, &buf_count);
 if (ret)
  return ret;

 if (output2_bufs) {
  buf_count.type = HFI_BUFFER_OUTPUT2;
  buf_count.count_actual = output2_bufs;

  ret = hfi_session_set_property(inst, ptype, &buf_count);
 }

 return ret;
}
