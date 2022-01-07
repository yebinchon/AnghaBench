
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {struct cfg80211_chan_def def; } ;



__attribute__((used)) static void
ath10k_htt_rx_h_any_chan_iter(struct ieee80211_hw *hw,
         struct ieee80211_chanctx_conf *conf,
         void *data)
{
 struct cfg80211_chan_def *def = data;

 *def = conf->def;
}
