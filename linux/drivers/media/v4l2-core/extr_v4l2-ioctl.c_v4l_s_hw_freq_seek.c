
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_ioctl_ops {int (* vidioc_s_hw_freq_seek ) (struct file*,void*,struct v4l2_hw_freq_seek*) ;} ;
struct v4l2_hw_freq_seek {int type; } ;
struct file {int dummy; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 int stub1 (struct file*,void*,struct v4l2_hw_freq_seek*) ;
 int v4l_enable_media_source (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_s_hw_freq_seek(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_hw_freq_seek *p = arg;
 enum v4l2_tuner_type type;
 int ret;

 ret = v4l_enable_media_source(vfd);
 if (ret)
  return ret;

 if (vfd->vfl_type == VFL_TYPE_SDR)
  return -EINVAL;

 type = (vfd->vfl_type == VFL_TYPE_RADIO) ?
  V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 if (p->type != type)
  return -EINVAL;
 return ops->vidioc_s_hw_freq_seek(file, fh, p);
}
