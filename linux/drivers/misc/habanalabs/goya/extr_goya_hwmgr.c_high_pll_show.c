
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int high_pll; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t high_pll_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 if (hl_device_disabled_or_in_reset(hdev))
  return -ENODEV;

 return sprintf(buf, "%u\n", hdev->high_pll);
}
