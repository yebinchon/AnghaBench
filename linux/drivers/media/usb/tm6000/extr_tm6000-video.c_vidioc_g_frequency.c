
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {scalar_t__ tuner_type; int v4l2_dev; int freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ UNSET ;
 int g_frequency ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -ENOTTY;
 if (f->tuner)
  return -EINVAL;

 f->frequency = dev->freq;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, g_frequency, f);

 return 0;
}
