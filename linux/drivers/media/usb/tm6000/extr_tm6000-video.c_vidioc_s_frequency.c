
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {scalar_t__ tuner_type; int v4l2_dev; int freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ UNSET ;
 int s_frequency ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency const*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -ENOTTY;
 if (f->tuner != 0)
  return -EINVAL;

 dev->freq = f->frequency;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, f);

 return 0;
}
