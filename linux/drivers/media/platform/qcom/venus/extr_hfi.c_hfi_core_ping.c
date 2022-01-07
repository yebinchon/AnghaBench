
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {scalar_t__ error; int lock; int done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* core_ping ) (struct venus_core*,int) ;} ;


 int ENODEV ;
 int ETIMEDOUT ;
 scalar_t__ HFI_ERR_NONE ;
 int TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct venus_core*,int) ;
 int wait_for_completion_timeout (int *,int ) ;

int hfi_core_ping(struct venus_core *core)
{
 int ret;

 mutex_lock(&core->lock);

 ret = core->ops->core_ping(core, 0xbeef);
 if (ret)
  goto unlock;

 ret = wait_for_completion_timeout(&core->done, TIMEOUT);
 if (!ret) {
  ret = -ETIMEDOUT;
  goto unlock;
 }
 ret = 0;
 if (core->error != HFI_ERR_NONE)
  ret = -ENODEV;
unlock:
 mutex_unlock(&core->lock);
 return ret;
}
