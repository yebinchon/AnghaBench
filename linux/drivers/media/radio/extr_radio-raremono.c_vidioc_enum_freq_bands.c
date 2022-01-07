
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {scalar_t__ tuner; size_t index; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 int EINVAL ;
 struct v4l2_frequency_band* bands ;

__attribute__((used)) static int vidioc_enum_freq_bands(struct file *file, void *priv,
  struct v4l2_frequency_band *band)
{
 if (band->tuner != 0)
  return -EINVAL;

 if (band->index >= ARRAY_SIZE(bands))
  return -EINVAL;

 *band = bands[band->index];

 return 0;
}
