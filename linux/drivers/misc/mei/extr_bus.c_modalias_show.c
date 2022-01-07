
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
typedef int u8 ;
struct mei_cl_device {int name; int me_cl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int * mei_me_cl_uuid (int ) ;
 int mei_me_cl_ver (int ) ;
 int scnprintf (char*,int ,char*,int ,int const*,int ) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *a,
        char *buf)
{
 struct mei_cl_device *cldev = to_mei_cl_device(dev);
 const uuid_le *uuid = mei_me_cl_uuid(cldev->me_cl);
 u8 version = mei_me_cl_ver(cldev->me_cl);

 return scnprintf(buf, PAGE_SIZE, "mei:%s:%pUl:%02X:",
    cldev->name, uuid, version);
}
