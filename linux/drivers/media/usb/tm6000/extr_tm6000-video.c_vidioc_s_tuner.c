
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; scalar_t__ audmode; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {scalar_t__ tuner_type; int v4l2_dev; scalar_t__ amode; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ UNSET ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 int dprintk (struct tm6000_core*,int,char*,scalar_t__) ;
 int s_tuner ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner const*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *t)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -ENOTTY;
 if (0 != t->index)
  return -EINVAL;

 if (t->audmode > V4L2_TUNER_MODE_STEREO)
  dev->amode = V4L2_TUNER_MODE_STEREO;
 else
  dev->amode = t->audmode;
 dprintk(dev, 3, "audio mode: %x\n", t->audmode);

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_tuner, t);

 return 0;
}
