
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct pcm20 {int freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int clamp_t (int ,int ,int,int) ;
 int pcm20_setfreq (struct pcm20*,int ) ;
 int u32 ;
 struct pcm20* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct pcm20 *dev = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;

 dev->freq = clamp_t(u32, f->frequency, 87 * 16000U, 108 * 16000U);
 pcm20_setfreq(dev, dev->freq);
 return 0;
}
