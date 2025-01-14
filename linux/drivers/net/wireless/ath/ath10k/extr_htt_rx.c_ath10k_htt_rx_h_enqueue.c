
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ath10k {int dummy; } ;


 int RX_FLAG_ALLOW_SAME_PN ;
 int RX_FLAG_AMSDU_MORE ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int ath10k_htt_rx_h_queue_msdu (struct ath10k*,struct ieee80211_rx_status*,struct sk_buff*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

__attribute__((used)) static void ath10k_htt_rx_h_enqueue(struct ath10k *ar,
        struct sk_buff_head *amsdu,
        struct ieee80211_rx_status *status)
{
 struct sk_buff *msdu;
 struct sk_buff *first_subframe;

 first_subframe = skb_peek(amsdu);

 while ((msdu = __skb_dequeue(amsdu))) {

  if (skb_queue_empty(amsdu))
   status->flag &= ~RX_FLAG_AMSDU_MORE;
  else
   status->flag |= RX_FLAG_AMSDU_MORE;

  if (msdu == first_subframe) {
   first_subframe = ((void*)0);
   status->flag &= ~RX_FLAG_ALLOW_SAME_PN;
  } else {
   status->flag |= RX_FLAG_ALLOW_SAME_PN;
  }

  ath10k_htt_rx_h_queue_msdu(ar, status, msdu);
 }
}
