
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; int type; } ;
struct si470x_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int si470x_get_freq (struct si470x_device*,int *) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_g_frequency(struct file *file, void *priv,
  struct v4l2_frequency *freq)
{
 struct si470x_device *radio = video_drvdata(file);

 if (freq->tuner != 0)
  return -EINVAL;

 freq->type = V4L2_TUNER_RADIO;
 return si470x_get_freq(radio, &freq->frequency);
}
