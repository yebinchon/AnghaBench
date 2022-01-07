
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {int tuner; size_t index; int type; } ;
struct hackrf_dev {int dev; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 int EINVAL ;
 struct v4l2_frequency_band* bands_adc_dac ;
 struct v4l2_frequency_band* bands_rx_tx ;
 int dev_dbg (int ,char*,int,int ,size_t) ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_enum_freq_bands(struct file *file, void *priv,
  struct v4l2_frequency_band *band)
{
 struct hackrf_dev *dev = video_drvdata(file);
 int ret;

 dev_dbg(dev->dev, "tuner=%d type=%d index=%d\n",
   band->tuner, band->type, band->index);

 if (band->tuner == 0) {
  if (band->index >= ARRAY_SIZE(bands_adc_dac)) {
   ret = -EINVAL;
  } else {
   *band = bands_adc_dac[band->index];
   ret = 0;
  }
 } else if (band->tuner == 1) {
  if (band->index >= ARRAY_SIZE(bands_rx_tx)) {
   ret = -EINVAL;
  } else {
   *band = bands_rx_tx[band->index];
   ret = 0;
  }
 } else {
  ret = -EINVAL;
 }

 return ret;
}
