
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int power_enabled; int core; } ;


 int venus_halt_axi (struct venus_hfi_device*) ;
 int venus_set_hw_state_suspend (int ) ;

__attribute__((used)) static int venus_power_off(struct venus_hfi_device *hdev)
{
 int ret;

 if (!hdev->power_enabled)
  return 0;

 ret = venus_set_hw_state_suspend(hdev->core);
 if (ret)
  return ret;

 ret = venus_halt_axi(hdev);
 if (ret)
  return ret;

 hdev->power_enabled = 0;

 return 0;
}
