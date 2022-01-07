
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_device_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct kempld_device_data* dev_get_drvdata (struct device*) ;
 int kempld_get_type_string (struct kempld_device_data*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t kempld_type_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kempld_device_data *pld = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", kempld_get_type_string(pld));
}
