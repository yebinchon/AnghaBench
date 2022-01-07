
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int bxtwc_reg_addr ;
 int dev_err (struct device*,char*) ;
 scalar_t__ kstrtoul (char const*,int ,int *) ;

__attribute__((used)) static ssize_t bxtwc_reg_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 if (kstrtoul(buf, 0, &bxtwc_reg_addr)) {
  dev_err(dev, "Invalid register address\n");
  return -EINVAL;
 }
 return (ssize_t)count;
}
