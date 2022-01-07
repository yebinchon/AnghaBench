
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct video_device* to_video_device (struct device*) ;

__attribute__((used)) static ssize_t index_show(struct device *cd,
     struct device_attribute *attr, char *buf)
{
 struct video_device *vdev = to_video_device(cd);

 return sprintf(buf, "%i\n", vdev->index);
}
