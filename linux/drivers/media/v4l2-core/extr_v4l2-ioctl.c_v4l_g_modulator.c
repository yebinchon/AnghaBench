
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_modulator {int capability; int type; } ;
struct v4l2_ioctl_ops {int (* vidioc_g_modulator ) (struct file*,void*,struct v4l2_modulator*) ;} ;
struct file {int dummy; } ;


 int V4L2_TUNER_CAP_FREQ_BANDS ;
 int V4L2_TUNER_RADIO ;
 scalar_t__ VFL_TYPE_RADIO ;
 int stub1 (struct file*,void*,struct v4l2_modulator*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_modulator(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_modulator *p = arg;
 int err;

 if (vfd->vfl_type == VFL_TYPE_RADIO)
  p->type = V4L2_TUNER_RADIO;

 err = ops->vidioc_g_modulator(file, fh, p);
 if (!err)
  p->capability |= V4L2_TUNER_CAP_FREQ_BANDS;
 return err;
}
