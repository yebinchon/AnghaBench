
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int rates; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ar9170 {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ CARL9170_TX_MAX_RATES ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_TX_MAX_RATES ;
 scalar_t__ IEEE80211_TX_RATE_TABLE_SIZE ;
 int ieee80211_get_tx_rates (struct ieee80211_vif*,struct ieee80211_sta*,struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static void carl9170_tx_get_rates(struct ar9170 *ar,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta,
      struct sk_buff *skb)
{
 struct ieee80211_tx_info *info;

 BUILD_BUG_ON(IEEE80211_TX_MAX_RATES < CARL9170_TX_MAX_RATES);
 BUILD_BUG_ON(IEEE80211_TX_MAX_RATES > IEEE80211_TX_RATE_TABLE_SIZE);

 info = IEEE80211_SKB_CB(skb);

 ieee80211_get_tx_rates(vif, sta, skb,
          info->control.rates,
          IEEE80211_TX_MAX_RATES);
}
