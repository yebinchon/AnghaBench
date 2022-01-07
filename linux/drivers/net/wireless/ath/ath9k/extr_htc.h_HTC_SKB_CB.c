
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int driver_data; } ;
struct ath9k_htc_tx_ctl {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INFO_DRIVER_DATA_SIZE ;

__attribute__((used)) static inline struct ath9k_htc_tx_ctl *HTC_SKB_CB(struct sk_buff *skb)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);

 BUILD_BUG_ON(sizeof(struct ath9k_htc_tx_ctl) >
       IEEE80211_TX_INFO_DRIVER_DATA_SIZE);
 return (struct ath9k_htc_tx_ctl *) &tx_info->driver_data;
}
