
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int center_freq; } ;
struct ath5k_hw {int ah_radio; struct ieee80211_channel* ah_current_channel; } ;


 int AR5K_PHY_CCKTXCTL ;
 int AR5K_PHY_CCKTXCTL_JAPAN ;
 int AR5K_PHY_CCKTXCTL_WORLD ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;




 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;
 int EINVAL ;
 int ath5k_channel_ok (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_rf2425_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_rf5110_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_rf5111_channel (struct ath5k_hw*,struct ieee80211_channel*) ;
 int ath5k_hw_rf5112_channel (struct ath5k_hw*,struct ieee80211_channel*) ;

__attribute__((used)) static int
ath5k_hw_channel(struct ath5k_hw *ah,
  struct ieee80211_channel *channel)
{
 int ret;




 if (!ath5k_channel_ok(ah, channel)) {
  ATH5K_ERR(ah,
   "channel frequency (%u MHz) out of supported "
   "band range\n",
   channel->center_freq);
  return -EINVAL;
 }




 switch (ah->ah_radio) {
 case 129:
  ret = ath5k_hw_rf5110_channel(ah, channel);
  break;
 case 128:
  ret = ath5k_hw_rf5111_channel(ah, channel);
  break;
 case 131:
 case 130:
  ret = ath5k_hw_rf2425_channel(ah, channel);
  break;
 default:
  ret = ath5k_hw_rf5112_channel(ah, channel);
  break;
 }

 if (ret)
  return ret;


 if (channel->center_freq == 2484) {
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_CCKTXCTL,
    AR5K_PHY_CCKTXCTL_JAPAN);
 } else {
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_CCKTXCTL,
    AR5K_PHY_CCKTXCTL_WORLD);
 }

 ah->ah_current_channel = channel;

 return 0;
}
