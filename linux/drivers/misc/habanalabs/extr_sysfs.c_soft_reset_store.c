
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 int hl_device_reset (struct hl_device*,int,int) ;
 int kstrtoul (char const*,int ,long*) ;

__attribute__((used)) static ssize_t soft_reset_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct hl_device *hdev = dev_get_drvdata(dev);
 long value;
 int rc;

 rc = kstrtoul(buf, 0, &value);

 if (rc) {
  count = -EINVAL;
  goto out;
 }

 hl_device_reset(hdev, 0, 0);

out:
 return count;
}
