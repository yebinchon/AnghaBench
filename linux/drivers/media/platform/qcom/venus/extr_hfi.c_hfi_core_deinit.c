
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {scalar_t__ state; int lock; TYPE_1__* ops; int insts_count; int instances; } ;
struct TYPE_2__ {int (* core_deinit ) (struct venus_core*) ;} ;


 scalar_t__ CORE_UNINIT ;
 int EBUSY ;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct venus_core*) ;
 int wait_var_event (int *,int) ;

int hfi_core_deinit(struct venus_core *core, bool blocking)
{
 int ret = 0, empty;

 mutex_lock(&core->lock);

 if (core->state == CORE_UNINIT)
  goto unlock;

 empty = list_empty(&core->instances);

 if (!empty && !blocking) {
  ret = -EBUSY;
  goto unlock;
 }

 if (!empty) {
  mutex_unlock(&core->lock);
  wait_var_event(&core->insts_count,
          !atomic_read(&core->insts_count));
  mutex_lock(&core->lock);
 }

 ret = core->ops->core_deinit(core);

 if (!ret)
  core->state = CORE_UNINIT;

unlock:
 mutex_unlock(&core->lock);
 return ret;
}
