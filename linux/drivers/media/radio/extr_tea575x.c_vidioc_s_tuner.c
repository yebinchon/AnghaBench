
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct snd_tea575x {scalar_t__ val; scalar_t__ band; } ;
struct file {int dummy; } ;


 scalar_t__ BAND_AM ;
 int EINVAL ;
 scalar_t__ TEA575X_BIT_MONO ;
 scalar_t__ V4L2_TUNER_MODE_MONO ;
 int snd_tea575x_set_freq (struct snd_tea575x*) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *v)
{
 struct snd_tea575x *tea = video_drvdata(file);
 u32 orig_val = tea->val;

 if (v->index)
  return -EINVAL;
 tea->val &= ~TEA575X_BIT_MONO;
 if (v->audmode == V4L2_TUNER_MODE_MONO)
  tea->val |= TEA575X_BIT_MONO;

 if (tea->band != BAND_AM && tea->val != orig_val)
  snd_tea575x_set_freq(tea);

 return 0;
}
