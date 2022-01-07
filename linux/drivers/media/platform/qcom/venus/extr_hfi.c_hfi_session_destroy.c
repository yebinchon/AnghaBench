
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int list; struct venus_core* core; } ;
struct venus_core {int lock; int insts_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_var (int *) ;

void hfi_session_destroy(struct venus_inst *inst)
{
 struct venus_core *core = inst->core;

 mutex_lock(&core->lock);
 list_del_init(&inst->list);
 if (atomic_dec_and_test(&core->insts_count))
  wake_up_var(&core->insts_count);
 mutex_unlock(&core->lock);
}
