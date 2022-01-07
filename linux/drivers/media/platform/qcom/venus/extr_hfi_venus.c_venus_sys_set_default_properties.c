
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_hfi_device {TYPE_1__* core; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ IS_V4 (TYPE_1__*) ;
 int dev_warn (struct device*,char*,int) ;
 int venus_fw_debug ;
 int venus_fw_low_power_mode ;
 int venus_sys_idle_indicator ;
 int venus_sys_set_debug (struct venus_hfi_device*,int ) ;
 int venus_sys_set_idle_message (struct venus_hfi_device*,int) ;
 int venus_sys_set_power_control (struct venus_hfi_device*,int ) ;

__attribute__((used)) static int venus_sys_set_default_properties(struct venus_hfi_device *hdev)
{
 struct device *dev = hdev->core->dev;
 int ret;

 ret = venus_sys_set_debug(hdev, venus_fw_debug);
 if (ret)
  dev_warn(dev, "setting fw debug msg ON failed (%d)\n", ret);






 if (IS_V4(hdev->core))
  venus_sys_idle_indicator = 1;

 ret = venus_sys_set_idle_message(hdev, venus_sys_idle_indicator);
 if (ret)
  dev_warn(dev, "setting idle response ON failed (%d)\n", ret);

 ret = venus_sys_set_power_control(hdev, venus_fw_low_power_mode);
 if (ret)
  dev_warn(dev, "setting hw power collapse ON failed (%d)\n",
    ret);

 return ret;
}
