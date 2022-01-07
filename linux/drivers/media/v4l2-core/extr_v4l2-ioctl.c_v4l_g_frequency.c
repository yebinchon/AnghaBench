
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_ioctl_ops {int (* vidioc_g_frequency ) (struct file*,void*,struct v4l2_frequency*) ;} ;
struct v4l2_frequency {int type; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SDR ;
 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 int stub1 (struct file*,void*,struct v4l2_frequency*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_frequency(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_frequency *p = arg;

 if (vfd->vfl_type == VFL_TYPE_SDR)
  p->type = V4L2_TUNER_SDR;
 else
  p->type = (vfd->vfl_type == VFL_TYPE_RADIO) ?
    V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 return ops->vidioc_g_frequency(file, fh, p);
}
