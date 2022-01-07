
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct video_device {size_t minor; scalar_t__ vfl_dir; int (* release ) (struct video_device*) ;TYPE_1__ entity; int intf_devnode; int * cdev; struct v4l2_device* v4l2_dev; } ;
struct v4l2_device {int * release; scalar_t__ mdev; } ;
struct device {int dummy; } ;


 scalar_t__ MEDIA_ENT_F_UNKNOWN ;
 scalar_t__ VFL_DIR_M2M ;
 scalar_t__ WARN_ON (int) ;
 int cdev_del (int *) ;
 int devnode_clear (struct video_device*) ;
 int media_device_unregister_entity (TYPE_1__*) ;
 int media_devnode_remove (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct video_device*) ;
 struct video_device* to_video_device (struct device*) ;
 int v4l2_device_put (struct v4l2_device*) ;
 struct video_device** video_devices ;
 int videodev_lock ;

__attribute__((used)) static void v4l2_device_release(struct device *cd)
{
 struct video_device *vdev = to_video_device(cd);
 struct v4l2_device *v4l2_dev = vdev->v4l2_dev;

 mutex_lock(&videodev_lock);
 if (WARN_ON(video_devices[vdev->minor] != vdev)) {

  mutex_unlock(&videodev_lock);
  return;
 }


 video_devices[vdev->minor] = ((void*)0);


 cdev_del(vdev->cdev);


 vdev->cdev = ((void*)0);


 devnode_clear(vdev);

 mutex_unlock(&videodev_lock);
 if (v4l2_dev->release == ((void*)0))
  v4l2_dev = ((void*)0);



 vdev->release(vdev);


 if (v4l2_dev)
  v4l2_device_put(v4l2_dev);
}
