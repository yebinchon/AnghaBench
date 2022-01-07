
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ath10k_skb_cb {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 int BUILD_BUG_ON (int) ;
 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INFO_DRIVER_DATA_SIZE ;

__attribute__((used)) static inline struct ath10k_skb_cb *ATH10K_SKB_CB(struct sk_buff *skb)
{
 BUILD_BUG_ON(sizeof(struct ath10k_skb_cb) >
       IEEE80211_TX_INFO_DRIVER_DATA_SIZE);
 return (struct ath10k_skb_cb *)&IEEE80211_SKB_CB(skb)->driver_data;
}
