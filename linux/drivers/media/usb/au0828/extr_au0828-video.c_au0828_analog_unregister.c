
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct au0828_dev {int v4l2_dev; int vbi_dev; int vdev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AU0828_VMUX_UNDEFINED ;
 TYPE_1__ AUVI_INPUT (int ) ;
 int au0828_sysfs_lock ;
 int dprintk (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

int au0828_analog_unregister(struct au0828_dev *dev)
{
 dprintk(1, "au0828_analog_unregister called\n");


 if (AUVI_INPUT(0).type == AU0828_VMUX_UNDEFINED)
  return 0;

 mutex_lock(&au0828_sysfs_lock);
 video_unregister_device(&dev->vdev);
 video_unregister_device(&dev->vbi_dev);
 mutex_unlock(&au0828_sysfs_lock);

 v4l2_device_disconnect(&dev->v4l2_dev);
 v4l2_device_put(&dev->v4l2_dev);

 return 1;
}
