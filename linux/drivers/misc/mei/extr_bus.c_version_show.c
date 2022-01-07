
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_cl_device {int me_cl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mei_me_cl_ver (int ) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static ssize_t version_show(struct device *dev, struct device_attribute *a,
        char *buf)
{
 struct mei_cl_device *cldev = to_mei_cl_device(dev);
 u8 version = mei_me_cl_ver(cldev->me_cl);

 return scnprintf(buf, PAGE_SIZE, "%02X", version);
}
