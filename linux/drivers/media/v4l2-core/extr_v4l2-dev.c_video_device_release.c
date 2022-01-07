
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;


 int kfree (struct video_device*) ;

void video_device_release(struct video_device *vdev)
{
 kfree(vdev);
}
