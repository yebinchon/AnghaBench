
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct video_device {int dev_debug; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kstrtou16 (char const*,int ,int *) ;
 struct video_device* to_video_device (struct device*) ;

__attribute__((used)) static ssize_t dev_debug_store(struct device *cd, struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct video_device *vdev = to_video_device(cd);
 int res = 0;
 u16 value;

 res = kstrtou16(buf, 0, &value);
 if (res)
  return res;

 vdev->dev_debug = value;
 return len;
}
