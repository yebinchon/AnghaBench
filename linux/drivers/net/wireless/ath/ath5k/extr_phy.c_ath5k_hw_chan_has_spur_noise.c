
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_channel {int center_freq; } ;
struct ath5k_hw {scalar_t__ ah_radio; int ah_mac_version; } ;


 scalar_t__ AR5K_RF2413 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 int AR5K_SREV_AR2417 ;

bool
ath5k_hw_chan_has_spur_noise(struct ath5k_hw *ah,
    struct ieee80211_channel *channel)
{
 u8 refclk_freq;

 if ((ah->ah_radio == AR5K_RF5112) ||
 (ah->ah_radio == AR5K_RF5413) ||
 (ah->ah_radio == AR5K_RF2413) ||
 (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4)))
  refclk_freq = 40;
 else
  refclk_freq = 32;

 if ((channel->center_freq % refclk_freq != 0) &&
 ((channel->center_freq % refclk_freq < 10) ||
 (channel->center_freq % refclk_freq > 22)))
  return 1;
 else
  return 0;
}
