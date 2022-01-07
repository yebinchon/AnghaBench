
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* v4l2_dev; scalar_t__ ctrl_handler; int flags; } ;
struct v4l2_ioctl_ops {int (* vidioc_g_ext_ctrls ) (struct file*,void*,struct v4l2_ext_controls*) ;} ;
struct v4l2_fh {scalar_t__ ctrl_handler; } ;
struct v4l2_ext_controls {int count; int error_idx; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mdev; } ;


 int EINVAL ;
 int ENOTTY ;
 int V4L2_FL_USES_V4L2_FH ;
 scalar_t__ check_ext_ctrls (struct v4l2_ext_controls*,int ) ;
 int stub1 (struct file*,void*,struct v4l2_ext_controls*) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_g_ext_ctrls (scalar_t__,struct video_device*,int ,struct v4l2_ext_controls*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_ext_ctrls(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_ext_controls *p = arg;
 struct v4l2_fh *vfh =
  test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : ((void*)0);

 p->error_idx = p->count;
 if (vfh && vfh->ctrl_handler)
  return v4l2_g_ext_ctrls(vfh->ctrl_handler,
     vfd, vfd->v4l2_dev->mdev, p);
 if (vfd->ctrl_handler)
  return v4l2_g_ext_ctrls(vfd->ctrl_handler,
     vfd, vfd->v4l2_dev->mdev, p);
 if (ops->vidioc_g_ext_ctrls == ((void*)0))
  return -ENOTTY;
 return check_ext_ctrls(p, 0) ? ops->vidioc_g_ext_ctrls(file, fh, p) :
     -EINVAL;
}
