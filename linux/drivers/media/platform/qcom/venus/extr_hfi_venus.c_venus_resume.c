
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int suspended; int lock; } ;
struct venus_core {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_power_on (struct venus_hfi_device*) ;

__attribute__((used)) static int venus_resume(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 int ret = 0;

 mutex_lock(&hdev->lock);

 if (!hdev->suspended)
  goto unlock;

 ret = venus_power_on(hdev);

unlock:
 if (!ret)
  hdev->suspended = 0;

 mutex_unlock(&hdev->lock);

 return ret;
}
