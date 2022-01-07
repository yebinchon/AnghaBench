
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {int width; TYPE_2__* chan; } ;
struct ath5k_hw {int ah_bwmode; TYPE_1__* curchan; } ;
struct TYPE_4__ {int center_freq; } ;
struct TYPE_3__ {int center_freq; } ;


 int AR5K_BWMODE_10MHZ ;
 int AR5K_BWMODE_5MHZ ;
 int AR5K_BWMODE_DEFAULT ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ,int ) ;
 int ATH5K_DEBUG_RESET ;
 int EINVAL ;




 int WARN_ON (int) ;
 int ath5k_reset (struct ath5k_hw*,TYPE_2__*,int) ;

int
ath5k_chan_set(struct ath5k_hw *ah, struct cfg80211_chan_def *chandef)
{
 ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
    "channel set, resetting (%u -> %u MHz)\n",
    ah->curchan->center_freq, chandef->chan->center_freq);

 switch (chandef->width) {
 case 130:
 case 129:
  ah->ah_bwmode = AR5K_BWMODE_DEFAULT;
  break;
 case 128:
  ah->ah_bwmode = AR5K_BWMODE_5MHZ;
  break;
 case 131:
  ah->ah_bwmode = AR5K_BWMODE_10MHZ;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }







 return ath5k_reset(ah, chandef->chan, 1);
}
