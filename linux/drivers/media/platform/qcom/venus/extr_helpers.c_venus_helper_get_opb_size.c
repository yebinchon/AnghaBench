
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {scalar_t__ session_type; unsigned int output_buf_size; scalar_t__ opb_buftype; unsigned int output2_buf_size; } ;


 scalar_t__ HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFFER_OUTPUT2 ;
 scalar_t__ VIDC_SESSION_TYPE_ENC ;

unsigned int venus_helper_get_opb_size(struct venus_inst *inst)
{

 if (inst->session_type == VIDC_SESSION_TYPE_ENC)
  return inst->output_buf_size;

 if (inst->opb_buftype == HFI_BUFFER_OUTPUT)
  return inst->output_buf_size;
 else if (inst->opb_buftype == HFI_BUFFER_OUTPUT2)
  return inst->output2_buf_size;

 return 0;
}
