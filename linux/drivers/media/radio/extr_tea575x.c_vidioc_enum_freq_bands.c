
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {int dummy; } ;
struct snd_tea575x {int dummy; } ;
struct file {int dummy; } ;


 int snd_tea575x_enum_freq_bands (struct snd_tea575x*,struct v4l2_frequency_band*) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_freq_bands(struct file *file, void *priv,
      struct v4l2_frequency_band *band)
{
 struct snd_tea575x *tea = video_drvdata(file);

 return snd_tea575x_enum_freq_bands(tea, band);
}
