
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; unsigned int frequency; } ;
struct file {int dummy; } ;


 int EINVAL ;

int vivid_radio_g_frequency(struct file *file, const unsigned *pfreq, struct v4l2_frequency *vf)
{
 if (vf->tuner != 0)
  return -EINVAL;
 vf->frequency = *pfreq;
 return 0;
}
