
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_ioctl_ops {int (* vidioc_enum_input ) (struct file*,void*,struct v4l2_input*) ;} ;
struct v4l2_input {int capabilities; } ;
struct file {int dummy; } ;


 int V4L2_IN_CAP_STD ;
 int VIDIOC_S_STD ;
 scalar_t__ is_valid_ioctl (struct video_device*,int ) ;
 int stub1 (struct file*,void*,struct v4l2_input*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_enuminput(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_input *p = arg;







 if (is_valid_ioctl(vfd, VIDIOC_S_STD))
  p->capabilities |= V4L2_IN_CAP_STD;

 return ops->vidioc_enum_input(file, fh, p);
}
