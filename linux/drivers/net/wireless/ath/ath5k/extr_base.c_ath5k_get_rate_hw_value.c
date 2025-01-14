
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_rate {int hw_value; int hw_value_short; } ;
struct ieee80211_hw {int dummy; } ;
struct ath5k_buf {TYPE_1__* rates; } ;
struct TYPE_2__ {int flags; } ;


 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 struct ieee80211_rate* ath5k_get_rate (struct ieee80211_hw const*,struct ieee80211_tx_info const*,struct ath5k_buf*,int) ;

__attribute__((used)) static u16
ath5k_get_rate_hw_value(const struct ieee80211_hw *hw,
   const struct ieee80211_tx_info *info,
   struct ath5k_buf *bf, int idx)
{
 struct ieee80211_rate *rate;
 u16 hw_rate;
 u8 rc_flags;

 rate = ath5k_get_rate(hw, info, bf, idx);
 if (!rate)
  return 0;

 rc_flags = bf->rates[idx].flags;
 hw_rate = (rc_flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE) ?
     rate->hw_value_short : rate->hw_value;

 return hw_rate;
}
