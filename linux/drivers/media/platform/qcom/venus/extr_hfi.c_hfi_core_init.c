
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {scalar_t__ state; scalar_t__ error; int lock; int done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* core_init ) (struct venus_core*) ;} ;


 scalar_t__ CORE_INIT ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ HFI_ERR_NONE ;
 int TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stub1 (struct venus_core*) ;
 int wait_for_completion_timeout (int *,int ) ;

int hfi_core_init(struct venus_core *core)
{
 int ret = 0;

 mutex_lock(&core->lock);

 if (core->state >= CORE_INIT)
  goto unlock;

 reinit_completion(&core->done);

 ret = core->ops->core_init(core);
 if (ret)
  goto unlock;

 ret = wait_for_completion_timeout(&core->done, TIMEOUT);
 if (!ret) {
  ret = -ETIMEDOUT;
  goto unlock;
 }

 ret = 0;

 if (core->error != HFI_ERR_NONE) {
  ret = -EIO;
  goto unlock;
 }

 core->state = CORE_INIT;
unlock:
 mutex_unlock(&core->lock);
 return ret;
}
