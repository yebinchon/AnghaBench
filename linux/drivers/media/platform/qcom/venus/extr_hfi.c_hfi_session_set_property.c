
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_inst {scalar_t__ state; TYPE_1__* core; } ;
struct hfi_ops {int (* session_set_property ) (struct venus_inst*,int ,void*) ;} ;
struct TYPE_2__ {struct hfi_ops* ops; } ;


 int EINVAL ;
 scalar_t__ INST_INIT ;
 scalar_t__ INST_STOP ;
 int stub1 (struct venus_inst*,int ,void*) ;

int hfi_session_set_property(struct venus_inst *inst, u32 ptype, void *pdata)
{
 const struct hfi_ops *ops = inst->core->ops;

 if (inst->state < INST_INIT || inst->state >= INST_STOP)
  return -EINVAL;

 return ops->session_set_property(inst, ptype, pdata);
}
