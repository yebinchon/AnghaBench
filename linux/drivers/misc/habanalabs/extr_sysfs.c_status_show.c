
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {scalar_t__ disabled; int in_reset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ atomic_read (int *) ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t status_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);
 char *str;

 if (atomic_read(&hdev->in_reset))
  str = "In reset";
 else if (hdev->disabled)
  str = "Malfunction";
 else
  str = "Operational";

 return sprintf(buf, "%s\n", str);
}
