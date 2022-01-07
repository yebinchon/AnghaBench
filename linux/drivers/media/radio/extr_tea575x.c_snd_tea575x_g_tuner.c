
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int signal; int audmode; int rxsubchans; int rangehigh; int rangelow; int capability; int type; int name; } ;
struct v4l2_frequency_band {int rangehigh; int rangelow; int capability; int member_0; } ;
struct snd_tea575x {int val; scalar_t__ tuned; scalar_t__ stereo; scalar_t__ has_am; } ;
struct TYPE_2__ {int rangelow; } ;


 size_t BAND_AM ;
 int EINVAL ;
 int TEA575X_BIT_MONO ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 TYPE_1__* bands ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int snd_tea575x_enum_freq_bands (struct snd_tea575x*,struct v4l2_frequency_band*) ;
 int snd_tea575x_read (struct snd_tea575x*) ;
 int strscpy (int ,char*,int) ;

int snd_tea575x_g_tuner(struct snd_tea575x *tea, struct v4l2_tuner *v)
{
 struct v4l2_frequency_band band_fm = { 0, };

 if (v->index > 0)
  return -EINVAL;

 snd_tea575x_read(tea);
 snd_tea575x_enum_freq_bands(tea, &band_fm);

 memset(v, 0, sizeof(*v));
 strscpy(v->name, tea->has_am ? "FM/AM" : "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->capability = band_fm.capability;
 v->rangelow = tea->has_am ? bands[BAND_AM].rangelow : band_fm.rangelow;
 v->rangehigh = band_fm.rangehigh;
 v->rxsubchans = tea->stereo ? V4L2_TUNER_SUB_STEREO : V4L2_TUNER_SUB_MONO;
 v->audmode = (tea->val & TEA575X_BIT_MONO) ?
  V4L2_TUNER_MODE_MONO : V4L2_TUNER_MODE_STEREO;
 v->signal = tea->tuned ? 0xffff : 0;
 return 0;
}
