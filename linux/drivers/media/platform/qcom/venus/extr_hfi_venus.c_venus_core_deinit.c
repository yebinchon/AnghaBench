
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int suspended; int power_enabled; } ;
struct venus_core {int dummy; } ;


 int VENUS_STATE_DEINIT ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_set_state (struct venus_hfi_device*,int ) ;

__attribute__((used)) static int venus_core_deinit(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);

 venus_set_state(hdev, VENUS_STATE_DEINIT);
 hdev->suspended = 1;
 hdev->power_enabled = 0;

 return 0;
}
