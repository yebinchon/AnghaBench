
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int capability; int rangehigh; int audmode; int rxsubchans; int type; int name; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {scalar_t__ tuner_type; int amode; int v4l2_dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_NORM ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_SUB_STEREO ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -ENOTTY;
 if (0 != t->index)
  return -EINVAL;

 strscpy(t->name, "Television", sizeof(t->name));
 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO;
 t->rangehigh = 0xffffffffUL;
 t->rxsubchans = V4L2_TUNER_SUB_STEREO;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, g_tuner, t);

 t->audmode = dev->amode;

 return 0;
}
