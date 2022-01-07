
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {scalar_t__ num_input_bufs; scalar_t__ num_output_bufs; TYPE_2__* core; } ;
struct hfi_buffer_requirements {scalar_t__ count_actual; } ;
typedef enum hfi_version { ____Placeholder_hfi_version } hfi_version ;
struct TYPE_4__ {TYPE_1__* res; } ;
struct TYPE_3__ {int hfi_version; } ;


 int EINVAL ;
 int HFI_BUFFER_INPUT ;
 int HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFREQ_COUNT_MIN (struct hfi_buffer_requirements*,int) ;
 int venus_helper_get_bufreq (struct venus_inst*,int ,struct hfi_buffer_requirements*) ;

__attribute__((used)) static int vdec_verify_conf(struct venus_inst *inst)
{
 enum hfi_version ver = inst->core->res->hfi_version;
 struct hfi_buffer_requirements bufreq;
 int ret;

 if (!inst->num_input_bufs || !inst->num_output_bufs)
  return -EINVAL;

 ret = venus_helper_get_bufreq(inst, HFI_BUFFER_OUTPUT, &bufreq);
 if (ret)
  return ret;

 if (inst->num_output_bufs < bufreq.count_actual ||
     inst->num_output_bufs < HFI_BUFREQ_COUNT_MIN(&bufreq, ver))
  return -EINVAL;

 ret = venus_helper_get_bufreq(inst, HFI_BUFFER_INPUT, &bufreq);
 if (ret)
  return ret;

 if (inst->num_input_bufs < HFI_BUFREQ_COUNT_MIN(&bufreq, ver))
  return -EINVAL;

 return 0;
}
