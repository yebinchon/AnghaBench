
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef long ssize_t ;


 long ENODEV ;
 int IC_PLL ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 long hl_get_frequency (struct hl_device*,int ,int) ;
 long sprintf (char*,char*,long) ;

__attribute__((used)) static ssize_t ic_clk_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);
 long value;

 if (hl_device_disabled_or_in_reset(hdev))
  return -ENODEV;

 value = hl_get_frequency(hdev, IC_PLL, 0);

 if (value < 0)
  return value;

 return sprintf(buf, "%lu\n", value);
}
