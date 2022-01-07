
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int sdr_fm_freq; int sdr_adc_freq; } ;
struct v4l2_frequency {int tuner; int type; int frequency; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_ADC ;
 int V4L2_TUNER_RF ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_sdr_g_frequency(struct file *file, void *fh,
  struct v4l2_frequency *vf)
{
 struct vivid_dev *dev = video_drvdata(file);

 switch (vf->tuner) {
 case 0:
  vf->frequency = dev->sdr_adc_freq;
  vf->type = V4L2_TUNER_ADC;
  return 0;
 case 1:
  vf->frequency = dev->sdr_fm_freq;
  vf->type = V4L2_TUNER_RF;
  return 0;
 default:
  return -EINVAL;
 }
}
