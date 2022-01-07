
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct snd_tea575x {size_t band; int freq; scalar_t__ tea5759; scalar_t__ has_am; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;


 size_t BAND_AM ;
 size_t BAND_FM ;
 size_t BAND_FM_JAPAN ;
 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 TYPE_1__* bands ;
 int clamp_t (int ,int,int ,int ) ;
 int snd_tea575x_set_freq (struct snd_tea575x*) ;
 int u32 ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct snd_tea575x *tea = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;

 if (tea->has_am && f->frequency < (20000 * 16))
  tea->band = BAND_AM;
 else if (tea->tea5759)
  tea->band = BAND_FM_JAPAN;
 else
  tea->band = BAND_FM;

 tea->freq = clamp_t(u32, f->frequency, bands[tea->band].rangelow,
     bands[tea->band].rangehigh);
 snd_tea575x_set_freq(tea);
 return 0;
}
