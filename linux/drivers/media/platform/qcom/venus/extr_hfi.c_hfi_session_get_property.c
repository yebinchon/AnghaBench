
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union hfi_get_property {int dummy; } hfi_get_property ;
typedef int u32 ;
struct venus_inst {scalar_t__ state; union hfi_get_property hprop; int done; TYPE_1__* core; } ;
struct hfi_ops {int (* session_get_property ) (struct venus_inst*,int ) ;} ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int EINVAL ;
 scalar_t__ INST_INIT ;
 scalar_t__ INST_STOP ;
 int reinit_completion (int *) ;
 int stub1 (struct venus_inst*,int ) ;
 int wait_session_msg (struct venus_inst*) ;

int hfi_session_get_property(struct venus_inst *inst, u32 ptype,
        union hfi_get_property *hprop)
{
 const struct hfi_ops *ops = inst->core->ops;
 int ret;

 if (inst->state < INST_INIT || inst->state >= INST_STOP)
  return -EINVAL;

 reinit_completion(&inst->done);

 ret = ops->session_get_property(inst, ptype);
 if (ret)
  return ret;

 ret = wait_session_msg(inst);
 if (ret)
  return ret;

 *hprop = inst->hprop;

 return 0;
}
