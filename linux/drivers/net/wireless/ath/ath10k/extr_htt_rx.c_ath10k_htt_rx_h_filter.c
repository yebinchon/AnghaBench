
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ath10k {int dummy; } ;


 int __skb_queue_purge (struct sk_buff_head*) ;
 scalar_t__ ath10k_htt_rx_amsdu_allowed (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;

__attribute__((used)) static void ath10k_htt_rx_h_filter(struct ath10k *ar,
       struct sk_buff_head *amsdu,
       struct ieee80211_rx_status *rx_status,
       unsigned long *drop_cnt)
{
 if (skb_queue_empty(amsdu))
  return;

 if (ath10k_htt_rx_amsdu_allowed(ar, amsdu, rx_status))
  return;

 if (drop_cnt)
  *drop_cnt += skb_queue_len(amsdu);

 __skb_queue_purge(amsdu);
}
