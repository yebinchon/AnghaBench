
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vdev {int vdev_mutex; scalar_t__ poll_wake; int waitq; } ;
struct file {struct vop_vdev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ vop_vdev_inited (struct vop_vdev*) ;

__attribute__((used)) static __poll_t vop_poll(struct file *f, poll_table *wait)
{
 struct vop_vdev *vdev = f->private_data;
 __poll_t mask = 0;

 mutex_lock(&vdev->vdev_mutex);
 if (vop_vdev_inited(vdev)) {
  mask = EPOLLERR;
  goto done;
 }
 poll_wait(f, &vdev->waitq, wait);
 if (vop_vdev_inited(vdev)) {
  mask = EPOLLERR;
 } else if (vdev->poll_wake) {
  vdev->poll_wake = 0;
  mask = EPOLLIN | EPOLLOUT;
 }
done:
 mutex_unlock(&vdev->vdev_mutex);
 return mask;
}
