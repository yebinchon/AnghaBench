
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int power_enabled; int core; } ;


 int venus_run (struct venus_hfi_device*) ;
 int venus_set_hw_state_resume (int ) ;
 int venus_set_hw_state_suspend (int ) ;

__attribute__((used)) static int venus_power_on(struct venus_hfi_device *hdev)
{
 int ret;

 if (hdev->power_enabled)
  return 0;

 ret = venus_set_hw_state_resume(hdev->core);
 if (ret)
  goto err;

 ret = venus_run(hdev);
 if (ret)
  goto err_suspend;

 hdev->power_enabled = 1;

 return 0;

err_suspend:
 venus_set_hw_state_suspend(hdev->core);
err:
 hdev->power_enabled = 0;
 return ret;
}
