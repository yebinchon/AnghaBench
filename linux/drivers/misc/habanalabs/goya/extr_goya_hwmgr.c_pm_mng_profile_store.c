
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {scalar_t__ pm_mng_profile; int fpriv_list_lock; int dev; int work_freq; int curr_pll_profile; scalar_t__ compute_ctx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 size_t EPERM ;
 int PLL_HIGH ;
 int PLL_LOW ;
 scalar_t__ PM_AUTO ;
 scalar_t__ PM_MANUAL ;
 int dev_err (int ,char*) ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 int flush_delayed_work (int *) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int hl_device_set_frequency (struct hl_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static ssize_t pm_mng_profile_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 if (hl_device_disabled_or_in_reset(hdev)) {
  count = -ENODEV;
  goto out;
 }

 mutex_lock(&hdev->fpriv_list_lock);

 if (hdev->compute_ctx) {
  dev_err(hdev->dev,
   "Can't change PM profile while compute context is opened on the device\n");
  count = -EPERM;
  goto unlock_mutex;
 }

 if (strncmp("auto", buf, strlen("auto")) == 0) {

  if (hdev->pm_mng_profile == PM_MANUAL) {
   hdev->curr_pll_profile = PLL_HIGH;
   hl_device_set_frequency(hdev, PLL_LOW);
   hdev->pm_mng_profile = PM_AUTO;
  }
 } else if (strncmp("manual", buf, strlen("manual")) == 0) {
  if (hdev->pm_mng_profile == PM_AUTO) {





   hdev->pm_mng_profile = PM_MANUAL;

   mutex_unlock(&hdev->fpriv_list_lock);




   flush_delayed_work(&hdev->work_freq);

   return count;
  }
 } else {
  dev_err(hdev->dev, "value should be auto or manual\n");
  count = -EINVAL;
 }

unlock_mutex:
 mutex_unlock(&hdev->fpriv_list_lock);
out:
 return count;
}
