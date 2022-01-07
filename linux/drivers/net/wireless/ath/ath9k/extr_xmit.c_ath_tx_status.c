
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct ieee80211_sta** status_driver_data; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ status; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_STATUS_EOSP ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_tx_status (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_tx_status_noskb (struct ieee80211_hw*,struct ieee80211_sta*,struct ieee80211_tx_info*) ;

__attribute__((used)) static void ath_tx_status(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_sta *sta = info->status.status_driver_data[0];

 if (info->flags & (IEEE80211_TX_CTL_REQ_TX_STATUS |
      IEEE80211_TX_STATUS_EOSP)) {
  ieee80211_tx_status(hw, skb);
  return;
 }

 if (sta)
  ieee80211_tx_status_noskb(hw, sta, info);

 dev_kfree_skb(skb);
}
