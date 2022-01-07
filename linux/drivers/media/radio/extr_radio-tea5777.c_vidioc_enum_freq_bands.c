
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {scalar_t__ tuner; size_t index; } ;
struct radio_tea5777 {int has_am; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 size_t BAND_AM ;
 int EINVAL ;
 struct v4l2_frequency_band* bands ;
 struct radio_tea5777* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_freq_bands(struct file *file, void *priv,
      struct v4l2_frequency_band *band)
{
 struct radio_tea5777 *tea = video_drvdata(file);

 if (band->tuner != 0 || band->index >= ARRAY_SIZE(bands) ||
     (!tea->has_am && band->index == BAND_AM))
  return -EINVAL;

 *band = bands[band->index];
 return 0;
}
