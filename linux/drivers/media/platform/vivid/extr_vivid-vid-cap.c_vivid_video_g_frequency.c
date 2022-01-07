
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int tv_freq; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_video_g_frequency(struct file *file, void *fh, struct v4l2_frequency *vf)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (vf->tuner != 0)
  return -EINVAL;
 vf->frequency = dev->tv_freq;
 return 0;
}
