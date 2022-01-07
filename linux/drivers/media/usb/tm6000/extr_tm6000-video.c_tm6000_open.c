
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int lock; } ;
struct file {int dummy; } ;


 int __tm6000_open (struct file*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int tm6000_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 int res;

 mutex_lock(vdev->lock);
 res = __tm6000_open(file);
 mutex_unlock(vdev->lock);
 return res;
}
