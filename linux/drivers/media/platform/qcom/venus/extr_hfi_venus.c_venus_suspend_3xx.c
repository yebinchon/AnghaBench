
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int suspended; int lock; int power_enabled; } ;
struct venus_core {struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readx_poll_timeout (int ,struct venus_hfi_device*,int,int,int,int) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_cpu_and_video_core_idle ;
 int venus_cpu_idle_and_pc_ready ;
 int venus_is_valid_state (struct venus_hfi_device*) ;
 int venus_power_off (struct venus_hfi_device*) ;
 int venus_prepare_power_collapse (struct venus_hfi_device*,int) ;

__attribute__((used)) static int venus_suspend_3xx(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 struct device *dev = core->dev;
 bool val;
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
 ret = readx_poll_timeout(venus_cpu_and_video_core_idle, hdev, val, val,
     1500, 100 * 1500);
 if (ret)
  return ret;

 ret = venus_prepare_power_collapse(hdev, 0);
 if (ret) {
  dev_err(dev, "prepare for power collapse fail (%d)\n", ret);
  return ret;
 }

 ret = readx_poll_timeout(venus_cpu_idle_and_pc_ready, hdev, val, val,
     1500, 100 * 1500);
 if (ret)
  return ret;

 mutex_lock(&hdev->lock);

 ret = venus_power_off(hdev);
 if (ret) {
  dev_err(dev, "venus_power_off (%d)\n", ret);
  mutex_unlock(&hdev->lock);
  return ret;
 }

 hdev->suspended = 1;

 mutex_unlock(&hdev->lock);

 return 0;
}
