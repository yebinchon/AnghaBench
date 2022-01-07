
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct v4l2_frequency {scalar_t__ tuner; int frequency; } const v4l2_frequency ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int frequency; int v4l2_dev; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int EINVAL ;
 int g_frequency ;
 int s_frequency ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency const*) ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
         const struct v4l2_frequency *f)
{
 struct v4l2_frequency new_freq = *f;
 struct em28xx *dev = video_drvdata(file);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (f->tuner != 0)
  return -EINVAL;

 v4l2_device_call_all(&v4l2->v4l2_dev, 0, tuner, s_frequency, f);
 v4l2_device_call_all(&v4l2->v4l2_dev, 0, tuner, g_frequency, &new_freq);
 v4l2->frequency = new_freq.frequency;

 return 0;
}
