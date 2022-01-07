
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int asic_type; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



 int EINVAL ;
 int dev_err (int ,char*,int) ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t device_type_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);
 char *str;

 switch (hdev->asic_type) {
 case 128:
  str = "GOYA";
  break;
 default:
  dev_err(hdev->dev, "Unrecognized ASIC type %d\n",
    hdev->asic_type);
  return -EINVAL;
 }

 return sprintf(buf, "%s\n", str);
}
