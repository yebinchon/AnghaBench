
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_dev {int dummy; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;


 int AM_FREQ_RANGE_HIGH ;
 unsigned int BAND_AM ;
 unsigned int BAND_FM ;
 unsigned int BAND_SW ;
 int EINVAL ;
 int FM_FREQ_RANGE_LOW ;
 int SW_FREQ_RANGE_HIGH ;
 int SW_FREQ_RANGE_LOW ;
 unsigned int clamp_t (int ,int,int ,int ) ;
 int u32 ;
 struct vivid_dev* video_drvdata (struct file*) ;
 TYPE_1__* vivid_radio_bands ;
 int vivid_radio_calc_sig_qual (struct vivid_dev*) ;
 int vivid_radio_rds_init (struct vivid_dev*) ;

int vivid_radio_s_frequency(struct file *file, unsigned *pfreq, const struct v4l2_frequency *vf)
{
 struct vivid_dev *dev = video_drvdata(file);
 unsigned freq;
 unsigned band;

 if (vf->tuner != 0)
  return -EINVAL;

 if (vf->frequency >= (FM_FREQ_RANGE_LOW + SW_FREQ_RANGE_HIGH) / 2)
  band = BAND_FM;
 else if (vf->frequency <= (AM_FREQ_RANGE_HIGH + SW_FREQ_RANGE_LOW) / 2)
  band = BAND_AM;
 else
  band = BAND_SW;

 freq = clamp_t(u32, vf->frequency, vivid_radio_bands[band].rangelow,
        vivid_radio_bands[band].rangehigh);
 *pfreq = freq;






 vivid_radio_calc_sig_qual(dev);
 vivid_radio_rds_init(dev);
 return 0;
}
