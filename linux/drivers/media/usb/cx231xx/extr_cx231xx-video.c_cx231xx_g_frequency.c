
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int ctl_freq; } ;


 int EINVAL ;

int cx231xx_g_frequency(struct file *file, void *priv,
         struct v4l2_frequency *f)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 if (f->tuner)
  return -EINVAL;

 f->frequency = dev->ctl_freq;

 return 0;
}
