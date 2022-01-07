
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_device {struct v4l2_ctrl_handler* ctrl_handler; int flags; struct v4l2_ioctl_ops* ioctl_ops; } ;
struct v4l2_query_ext_ctrl {int flags; int member_0; } ;
struct v4l2_ioctl_ops {int (* vidioc_query_ext_ctrl ) (struct file*,struct v4l2_fh*,struct v4l2_query_ext_ctrl*) ;} ;
struct v4l2_fh {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {scalar_t__ is_ptr; } ;
struct file {struct v4l2_fh* private_data; } ;


 int V4L2_CTRL_FLAG_HAS_PAYLOAD ;
 int V4L2_FL_USES_V4L2_FH ;
 int stub1 (struct file*,struct v4l2_fh*,struct v4l2_query_ext_ctrl*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static inline bool ctrl_is_pointer(struct file *file, u32 id)
{
 struct video_device *vdev = video_devdata(file);
 struct v4l2_fh *fh = ((void*)0);
 struct v4l2_ctrl_handler *hdl = ((void*)0);
 struct v4l2_query_ext_ctrl qec = { id };
 const struct v4l2_ioctl_ops *ops = vdev->ioctl_ops;

 if (test_bit(V4L2_FL_USES_V4L2_FH, &vdev->flags))
  fh = file->private_data;

 if (fh && fh->ctrl_handler)
  hdl = fh->ctrl_handler;
 else if (vdev->ctrl_handler)
  hdl = vdev->ctrl_handler;

 if (hdl) {
  struct v4l2_ctrl *ctrl = v4l2_ctrl_find(hdl, id);

  return ctrl && ctrl->is_ptr;
 }

 if (!ops || !ops->vidioc_query_ext_ctrl)
  return 0;

 return !ops->vidioc_query_ext_ctrl(file, fh, &qec) &&
  (qec.flags & V4L2_CTRL_FLAG_HAS_PAYLOAD);
}
