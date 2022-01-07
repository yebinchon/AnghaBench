
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int temperature; int wmi_sync; } ;
struct ath10k {scalar_t__ state; int conf_mutex; int data_lock; TYPE_1__ thermal; int dev_flags; } ;
typedef int ssize_t ;


 int ATH10K_FLAG_CRASH_FLUSH ;
 scalar_t__ ATH10K_STATE_ON ;
 int ATH10K_THERMAL_SYNC_TIMEOUT_HZ ;
 int ENETDOWN ;
 int ESHUTDOWN ;
 int ETIMEDOUT ;
 int PAGE_SIZE ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_pdev_get_temperature (struct ath10k*) ;
 struct ath10k* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static ssize_t ath10k_thermal_show_temp(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct ath10k *ar = dev_get_drvdata(dev);
 int ret, temperature;
 unsigned long time_left;

 mutex_lock(&ar->conf_mutex);


 if (ar->state != ATH10K_STATE_ON) {
  ret = -ENETDOWN;
  goto out;
 }

 reinit_completion(&ar->thermal.wmi_sync);
 ret = ath10k_wmi_pdev_get_temperature(ar);
 if (ret) {
  ath10k_warn(ar, "failed to read temperature %d\n", ret);
  goto out;
 }

 if (test_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags)) {
  ret = -ESHUTDOWN;
  goto out;
 }

 time_left = wait_for_completion_timeout(&ar->thermal.wmi_sync,
      ATH10K_THERMAL_SYNC_TIMEOUT_HZ);
 if (!time_left) {
  ath10k_warn(ar, "failed to synchronize thermal read\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 spin_lock_bh(&ar->data_lock);
 temperature = ar->thermal.temperature;
 spin_unlock_bh(&ar->data_lock);


 ret = snprintf(buf, PAGE_SIZE, "%d\n", temperature * 1000);
out:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
