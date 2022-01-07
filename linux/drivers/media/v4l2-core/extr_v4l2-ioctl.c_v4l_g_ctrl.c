
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ ctrl_handler; int flags; } ;
struct v4l2_ioctl_ops {int (* vidioc_g_ctrl ) (struct file*,void*,struct v4l2_control*) ;int (* vidioc_g_ext_ctrls ) (struct file*,void*,struct v4l2_ext_controls*) ;} ;
struct v4l2_fh {scalar_t__ ctrl_handler; } ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int which; } ;
struct v4l2_ext_control {int value; int id; } ;
struct v4l2_control {int value; int id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 int V4L2_CTRL_ID2WHICH (int ) ;
 int V4L2_FL_USES_V4L2_FH ;
 scalar_t__ check_ext_ctrls (struct v4l2_ext_controls*,int) ;
 int stub1 (struct file*,void*,struct v4l2_control*) ;
 int stub2 (struct file*,void*,struct v4l2_ext_controls*) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_g_ctrl (scalar_t__,struct v4l2_control*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_ctrl(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_control *p = arg;
 struct v4l2_fh *vfh =
  test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) ? fh : ((void*)0);
 struct v4l2_ext_controls ctrls;
 struct v4l2_ext_control ctrl;

 if (vfh && vfh->ctrl_handler)
  return v4l2_g_ctrl(vfh->ctrl_handler, p);
 if (vfd->ctrl_handler)
  return v4l2_g_ctrl(vfd->ctrl_handler, p);
 if (ops->vidioc_g_ctrl)
  return ops->vidioc_g_ctrl(file, fh, p);
 if (ops->vidioc_g_ext_ctrls == ((void*)0))
  return -ENOTTY;

 ctrls.which = V4L2_CTRL_ID2WHICH(p->id);
 ctrls.count = 1;
 ctrls.controls = &ctrl;
 ctrl.id = p->id;
 ctrl.value = p->value;
 if (check_ext_ctrls(&ctrls, 1)) {
  int ret = ops->vidioc_g_ext_ctrls(file, fh, &ctrls);

  if (ret == 0)
   p->value = ctrl.value;
  return ret;
 }
 return -EINVAL;
}
