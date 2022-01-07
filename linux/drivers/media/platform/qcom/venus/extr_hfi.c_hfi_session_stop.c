
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {scalar_t__ state; int done; TYPE_1__* core; } ;
struct hfi_ops {int (* session_stop ) (struct venus_inst*) ;} ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int EINVAL ;
 scalar_t__ INST_START ;
 scalar_t__ INST_STOP ;
 int reinit_completion (int *) ;
 int stub1 (struct venus_inst*) ;
 int wait_session_msg (struct venus_inst*) ;

int hfi_session_stop(struct venus_inst *inst)
{
 const struct hfi_ops *ops = inst->core->ops;
 int ret;

 if (inst->state != INST_START)
  return -EINVAL;

 reinit_completion(&inst->done);

 ret = ops->session_stop(inst);
 if (ret)
  return ret;

 ret = wait_session_msg(inst);
 if (ret)
  return ret;

 inst->state = INST_STOP;

 return 0;
}
