
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency_band {scalar_t__ tuner; size_t index; } ;
struct si476x_radio {TYPE_1__* core; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int chip_id; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 int EINVAL ;
 size_t SI476X_BAND_FM ;



 struct v4l2_frequency_band* si476x_bands ;
 struct si476x_radio* video_drvdata (struct file*) ;

__attribute__((used)) static int si476x_radio_enum_freq_bands(struct file *file, void *priv,
     struct v4l2_frequency_band *band)
{
 int err;
 struct si476x_radio *radio = video_drvdata(file);

 if (band->tuner != 0)
  return -EINVAL;

 switch (radio->core->chip_id) {

 case 130:
 case 129:
  if (band->index < ARRAY_SIZE(si476x_bands)) {
   *band = si476x_bands[band->index];
   err = 0;
  } else {
   err = -EINVAL;
  }
  break;


 case 128:
  if (band->index == SI476X_BAND_FM) {
   *band = si476x_bands[band->index];
   err = 0;
  } else {
   err = -EINVAL;
  }
  break;
 default:
  err = -EINVAL;
 }

 return err;
}
