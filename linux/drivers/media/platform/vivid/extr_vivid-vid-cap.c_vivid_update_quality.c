
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t input; int tv_freq; int tpg; int * std_signal_mode; int * dv_timings_signal_mode; scalar_t__ loop_video; } ;


 int TPG_QUAL_COLOR ;
 int TPG_QUAL_GRAY ;
 int TPG_QUAL_NOISE ;
 scalar_t__ VIVID_INVALID_SIGNAL (int ) ;
 int next_pseudo_random32 (int) ;
 int tpg_s_quality (int *,int ,int) ;
 scalar_t__ vivid_is_hdmi_cap (struct vivid_dev*) ;
 scalar_t__ vivid_is_sdtv_cap (struct vivid_dev*) ;
 scalar_t__ vivid_is_svid_cap (struct vivid_dev*) ;
 int vivid_is_tv_cap (struct vivid_dev*) ;

void vivid_update_quality(struct vivid_dev *dev)
{
 unsigned freq_modulus;

 if (dev->loop_video && (vivid_is_svid_cap(dev) || vivid_is_hdmi_cap(dev))) {




  tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE, 0);
  return;
 }
 if (vivid_is_hdmi_cap(dev) &&
     VIVID_INVALID_SIGNAL(dev->dv_timings_signal_mode[dev->input])) {
  tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE, 0);
  return;
 }
 if (vivid_is_sdtv_cap(dev) &&
     VIVID_INVALID_SIGNAL(dev->std_signal_mode[dev->input])) {
  tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE, 0);
  return;
 }
 if (!vivid_is_tv_cap(dev)) {
  tpg_s_quality(&dev->tpg, TPG_QUAL_COLOR, 0);
  return;
 }







 freq_modulus = (dev->tv_freq - 676 ) % (6 * 16);
 if (freq_modulus > 2 * 16) {
  tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE,
   next_pseudo_random32(dev->tv_freq ^ 0x55) & 0x3f);
  return;
 }
 if (freq_modulus < 12 || freq_modulus > 20 )
  tpg_s_quality(&dev->tpg, TPG_QUAL_GRAY, 0);
 else
  tpg_s_quality(&dev->tpg, TPG_QUAL_COLOR, 0);
}
