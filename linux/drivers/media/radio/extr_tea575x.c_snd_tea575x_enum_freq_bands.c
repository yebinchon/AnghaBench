
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {scalar_t__ tuner; int index; int capability; } ;
struct snd_tea575x {int cannot_read_data; int has_am; int tea5759; } ;


 int BAND_AM ;
 int BAND_FM ;
 int BAND_FM_JAPAN ;
 int EINVAL ;
 int V4L2_TUNER_CAP_HWSEEK_BOUNDED ;
 struct v4l2_frequency_band* bands ;

int snd_tea575x_enum_freq_bands(struct snd_tea575x *tea,
     struct v4l2_frequency_band *band)
{
 int index;

 if (band->tuner != 0)
  return -EINVAL;

 switch (band->index) {
 case 0:
  if (tea->tea5759)
   index = BAND_FM_JAPAN;
  else
   index = BAND_FM;
  break;
 case 1:
  if (tea->has_am) {
   index = BAND_AM;
   break;
  }

 default:
  return -EINVAL;
 }

 *band = bands[index];
 if (!tea->cannot_read_data)
  band->capability |= V4L2_TUNER_CAP_HWSEEK_BOUNDED;

 return 0;
}
