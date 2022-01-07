
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_2__ {int rx_msdus_q; } ;
struct ath10k {TYPE_1__ htt; } ;


 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void ath10k_htt_rx_h_queue_msdu(struct ath10k *ar,
           struct ieee80211_rx_status *rx_status,
           struct sk_buff *skb)
{
 struct ieee80211_rx_status *status;

 status = IEEE80211_SKB_RXCB(skb);
 *status = *rx_status;

 skb_queue_tail(&ar->htt.rx_msdus_q, skb);
}
