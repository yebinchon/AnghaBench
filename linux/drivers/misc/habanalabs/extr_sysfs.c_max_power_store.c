
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {unsigned long max_power; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int hl_set_max_power (struct hl_device*,unsigned long) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t max_power_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct hl_device *hdev = dev_get_drvdata(dev);
 unsigned long value;
 int rc;

 if (hl_device_disabled_or_in_reset(hdev)) {
  count = -ENODEV;
  goto out;
 }

 rc = kstrtoul(buf, 0, &value);

 if (rc) {
  count = -EINVAL;
  goto out;
 }

 hdev->max_power = value;
 hl_set_max_power(hdev, value);

out:
 return count;
}
