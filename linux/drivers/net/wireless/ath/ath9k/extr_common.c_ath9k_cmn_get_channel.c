
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {size_t hw_value; } ;
struct cfg80211_chan_def {struct ieee80211_channel* chan; } ;
struct ath_hw {struct ath9k_channel* channels; } ;
struct ath9k_channel {int dummy; } ;


 int ath9k_cmn_update_ichannel (struct ath9k_channel*,struct cfg80211_chan_def*) ;

struct ath9k_channel *ath9k_cmn_get_channel(struct ieee80211_hw *hw,
         struct ath_hw *ah,
         struct cfg80211_chan_def *chandef)
{
 struct ieee80211_channel *curchan = chandef->chan;
 struct ath9k_channel *channel;

 channel = &ah->channels[curchan->hw_value];
 ath9k_cmn_update_ichannel(channel, chandef);

 return channel;
}
