
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_3__ {int readbuffers; int timeperframe; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct v4l2_ioctl_ops {int (* vidioc_g_parm ) (struct file*,void*,struct v4l2_streamparm*) ;int (* vidioc_g_std ) (struct file*,void*,int *) ;} ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int check_fmt (struct file*,scalar_t__) ;
 int stub1 (struct file*,void*,struct v4l2_streamparm*) ;
 int stub2 (struct file*,void*,int *) ;
 int v4l2_video_std_frame_period (int ,int *) ;

__attribute__((used)) static int v4l_g_parm(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct v4l2_streamparm *p = arg;
 v4l2_std_id std;
 int ret = check_fmt(file, p->type);

 if (ret)
  return ret;
 if (ops->vidioc_g_parm)
  return ops->vidioc_g_parm(file, fh, p);
 if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  return -EINVAL;
 p->parm.capture.readbuffers = 2;
 ret = ops->vidioc_g_std(file, fh, &std);
 if (ret == 0)
  v4l2_video_std_frame_period(std, &p->parm.capture.timeperframe);
 return ret;
}
