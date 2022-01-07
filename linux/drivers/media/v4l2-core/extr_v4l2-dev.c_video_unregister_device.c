
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; int flags; } ;


 int V4L2_FL_REGISTERED ;
 int clear_bit (int ,int *) ;
 int device_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_is_registered (struct video_device*) ;
 int videodev_lock ;

void video_unregister_device(struct video_device *vdev)
{

 if (!vdev || !video_is_registered(vdev))
  return;

 mutex_lock(&videodev_lock);



 clear_bit(V4L2_FL_REGISTERED, &vdev->flags);
 mutex_unlock(&videodev_lock);
 device_unregister(&vdev->dev);
}
