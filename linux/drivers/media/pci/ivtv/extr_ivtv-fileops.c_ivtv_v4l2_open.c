
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int lock; } ;
struct file {int dummy; } ;


 int ERESTARTSYS ;
 int ivtv_open (struct file*) ;
 scalar_t__ mutex_lock_interruptible (int ) ;
 int mutex_unlock (int ) ;
 struct video_device* video_devdata (struct file*) ;

int ivtv_v4l2_open(struct file *filp)
{
 struct video_device *vdev = video_devdata(filp);
 int res;

 if (mutex_lock_interruptible(vdev->lock))
  return -ERESTARTSYS;
 res = ivtv_open(filp);
 mutex_unlock(vdev->lock);
 return res;
}
