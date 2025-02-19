
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {scalar_t__ hw_value; int center_freq; } ;
struct ath5k_hw {scalar_t__ ah_radio; int ah_cal_mask; } ;


 int AR5K_CALIBRATION_FULL ;
 int AR5K_CALIBRATION_NF ;
 scalar_t__ AR5K_MODE_11B ;
 scalar_t__ AR5K_RF5110 ;
 scalar_t__ AR5K_RF5111 ;
 scalar_t__ AR5K_RF5112 ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,int ) ;
 int ATH5K_DEBUG_CALIBRATE ;
 int ath5k_hw_request_rfgain_probe (struct ath5k_hw*) ;
 int ath5k_hw_rf5110_calibrate (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_rf511x_iq_calibrate (struct ath5k_hw*) ;
 int ath5k_hw_update_noise_floor (struct ath5k_hw*) ;

int
ath5k_hw_phy_calibrate(struct ath5k_hw *ah,
  struct ieee80211_channel *channel)
{
 int ret;

 if (ah->ah_radio == AR5K_RF5110)
  return ath5k_hw_rf5110_calibrate(ah, channel);

 ret = ath5k_hw_rf511x_iq_calibrate(ah);
 if (ret) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_CALIBRATE,
   "No I/Q correction performed (%uMHz)\n",
   channel->center_freq);



  ret = 0;
 }



 if ((ah->ah_cal_mask & AR5K_CALIBRATION_FULL) &&
     (ah->ah_radio == AR5K_RF5111 ||
      ah->ah_radio == AR5K_RF5112) &&
     channel->hw_value != AR5K_MODE_11B)
  ath5k_hw_request_rfgain_probe(ah);


 if (!(ah->ah_cal_mask & AR5K_CALIBRATION_NF))
  ath5k_hw_update_noise_floor(ah);

 return ret;
}
