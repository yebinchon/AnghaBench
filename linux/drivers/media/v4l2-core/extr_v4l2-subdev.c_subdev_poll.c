
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_subdev {int flags; } ;
struct v4l2_fh {int wait; } ;
struct file {struct v4l2_fh* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLPRI ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ v4l2_event_pending (struct v4l2_fh*) ;
 struct v4l2_subdev* vdev_to_v4l2_subdev (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static __poll_t subdev_poll(struct file *file, poll_table *wait)
{
 struct video_device *vdev = video_devdata(file);
 struct v4l2_subdev *sd = vdev_to_v4l2_subdev(vdev);
 struct v4l2_fh *fh = file->private_data;

 if (!(sd->flags & V4L2_SUBDEV_FL_HAS_EVENTS))
  return EPOLLERR;

 poll_wait(file, &fh->wait, wait);

 if (v4l2_event_pending(fh))
  return EPOLLPRI;

 return 0;
}
