
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *a,
        char *buf)
{
 struct mei_cl_device *cldev = to_mei_cl_device(dev);

 return scnprintf(buf, PAGE_SIZE, "%s", cldev->name);
}
