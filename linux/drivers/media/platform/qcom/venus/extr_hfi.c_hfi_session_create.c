
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int list; struct hfi_inst_ops const* ops; int done; int state; struct venus_core* core; } ;
struct venus_core {int lock; int insts_count; int instances; } ;
struct hfi_inst_ops {int dummy; } ;


 int EINVAL ;
 int INST_UNINIT ;
 int atomic_inc (int *) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hfi_session_create(struct venus_inst *inst, const struct hfi_inst_ops *ops)
{
 struct venus_core *core = inst->core;

 if (!ops)
  return -EINVAL;

 inst->state = INST_UNINIT;
 init_completion(&inst->done);
 inst->ops = ops;

 mutex_lock(&core->lock);
 list_add_tail(&inst->list, &core->instances);
 atomic_inc(&core->insts_count);
 mutex_unlock(&core->lock);

 return 0;
}
