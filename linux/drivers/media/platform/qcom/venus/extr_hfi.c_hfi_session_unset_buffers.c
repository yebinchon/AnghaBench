
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int done; TYPE_1__* core; } ;
struct hfi_ops {int (* session_unset_buffers ) (struct venus_inst*,struct hfi_buffer_desc*) ;} ;
struct hfi_buffer_desc {int response_required; } ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int reinit_completion (int *) ;
 int stub1 (struct venus_inst*,struct hfi_buffer_desc*) ;
 int wait_session_msg (struct venus_inst*) ;

int hfi_session_unset_buffers(struct venus_inst *inst,
         struct hfi_buffer_desc *bd)
{
 const struct hfi_ops *ops = inst->core->ops;
 int ret;

 reinit_completion(&inst->done);

 ret = ops->session_unset_buffers(inst, bd);
 if (ret)
  return ret;

 if (!bd->response_required)
  return 0;

 ret = wait_session_msg(inst);
 if (ret)
  return ret;

 return 0;
}
