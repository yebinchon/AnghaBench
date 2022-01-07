
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {struct ieee80211_channel* chan; } ;
struct ath10k {int hw; } ;


 int ath10k_htt_rx_h_any_chan_iter ;
 int ieee80211_iter_chan_contexts_atomic (int ,int ,struct cfg80211_chan_def*) ;

__attribute__((used)) static struct ieee80211_channel *
ath10k_htt_rx_h_any_channel(struct ath10k *ar)
{
 struct cfg80211_chan_def def = {};

 ieee80211_iter_chan_contexts_atomic(ar->hw,
         ath10k_htt_rx_h_any_chan_iter,
         &def);

 return def.chan;
}
