
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {scalar_t__ pm_mng_profile; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ PM_AUTO ;
 scalar_t__ PM_MANUAL ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t pm_mng_profile_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 if (hl_device_disabled_or_in_reset(hdev))
  return -ENODEV;

 return sprintf(buf, "%s\n",
   (hdev->pm_mng_profile == PM_AUTO) ? "auto" :
   (hdev->pm_mng_profile == PM_MANUAL) ? "manual" :
   "unknown");
}
