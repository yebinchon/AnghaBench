
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdw; } ;
struct pvr2_sysfs {TYPE_1__ channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct pvr2_sysfs* dev_get_drvdata (struct device*) ;
 int pvr2_hdw_get_type (int ) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t hdw_name_show(struct device *class_dev,
        struct device_attribute *attr, char *buf)
{
 struct pvr2_sysfs *sfp;
 sfp = dev_get_drvdata(class_dev);
 if (!sfp) return -EINVAL;
 return scnprintf(buf,PAGE_SIZE,"%s\n",
    pvr2_hdw_get_type(sfp->channel.hdw));
}
