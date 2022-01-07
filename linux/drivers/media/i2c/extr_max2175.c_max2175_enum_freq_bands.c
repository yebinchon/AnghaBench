
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency_band {scalar_t__ tuner; scalar_t__ index; } ;
struct max2175 {struct v4l2_frequency_band* bands_rf; } ;


 int EINVAL ;
 struct max2175* max2175_from_sd (struct v4l2_subdev*) ;

__attribute__((used)) static int max2175_enum_freq_bands(struct v4l2_subdev *sd,
       struct v4l2_frequency_band *band)
{
 struct max2175 *ctx = max2175_from_sd(sd);

 if (band->tuner != 0 || band->index != 0)
  return -EINVAL;

 *band = *ctx->bands_rf;

 return 0;
}
