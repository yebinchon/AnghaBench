
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_hfi_device {int suspended; scalar_t__ last_packet_type; int lock; int power_enabled; } ;
struct venus_core {struct device* dev; } ;
struct device {int dummy; } ;


 int CPU_CS_SCIACMDARG0 ;
 int CPU_CS_SCIACMDARG0_PC_READY ;
 int EINVAL ;
 scalar_t__ HFI_CMD_SYS_PC_PREP ;
 int dev_err (struct device*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_are_queues_empty (struct venus_hfi_device*) ;
 int venus_is_valid_state (struct venus_hfi_device*) ;
 int venus_power_off (struct venus_hfi_device*) ;
 int venus_prepare_power_collapse (struct venus_hfi_device*,int) ;
 int venus_readl (struct venus_hfi_device*,int ) ;

__attribute__((used)) static int venus_suspend_1xx(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 struct device *dev = core->dev;
 u32 ctrl_status;
 int ret;

 if (!hdev->power_enabled || hdev->suspended)
  return 0;

 mutex_lock(&hdev->lock);
 ret = venus_is_valid_state(hdev);
 mutex_unlock(&hdev->lock);

 if (!ret) {
  dev_err(dev, "bad state, cannot suspend\n");
  return -EINVAL;
 }

 ret = venus_prepare_power_collapse(hdev, 1);
 if (ret) {
  dev_err(dev, "prepare for power collapse fail (%d)\n", ret);
  return ret;
 }

 mutex_lock(&hdev->lock);

 if (hdev->last_packet_type != HFI_CMD_SYS_PC_PREP) {
  mutex_unlock(&hdev->lock);
  return -EINVAL;
 }

 ret = venus_are_queues_empty(hdev);
 if (ret < 0 || !ret) {
  mutex_unlock(&hdev->lock);
  return -EINVAL;
 }

 ctrl_status = venus_readl(hdev, CPU_CS_SCIACMDARG0);
 if (!(ctrl_status & CPU_CS_SCIACMDARG0_PC_READY)) {
  mutex_unlock(&hdev->lock);
  return -EINVAL;
 }

 ret = venus_power_off(hdev);
 if (ret) {
  mutex_unlock(&hdev->lock);
  return ret;
 }

 hdev->suspended = 1;

 mutex_unlock(&hdev->lock);

 return 0;
}
