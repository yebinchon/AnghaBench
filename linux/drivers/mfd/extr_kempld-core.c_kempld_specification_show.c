
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spec_minor; int spec_major; } ;
struct kempld_device_data {TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct kempld_device_data* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ,int ) ;

__attribute__((used)) static ssize_t kempld_specification_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kempld_device_data *pld = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%d.%d\n", pld->info.spec_major,
         pld->info.spec_minor);
}
