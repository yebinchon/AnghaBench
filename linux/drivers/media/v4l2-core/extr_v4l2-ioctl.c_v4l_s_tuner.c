
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_tuner {int type; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_tuner ) (struct file*,void*,struct v4l2_tuner*) ;} ;
struct file {int dummy; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 scalar_t__ VFL_TYPE_RADIO ;
 int stub1 (struct file*,void*,struct v4l2_tuner*) ;
 int v4l_enable_media_source (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_s_tuner(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_tuner *p = arg;
 int ret;

 ret = v4l_enable_media_source(vfd);
 if (ret)
  return ret;
 p->type = (vfd->vfl_type == VFL_TYPE_RADIO) ?
   V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 return ops->vidioc_s_tuner(file, fh, p);
}
