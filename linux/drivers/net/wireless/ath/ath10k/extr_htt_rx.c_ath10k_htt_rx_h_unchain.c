
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ ring2_more_count; } ;
struct TYPE_6__ {int info1; } ;
struct TYPE_5__ {TYPE_3__ common; } ;
struct htt_rx_desc {TYPE_1__ frag_info; TYPE_2__ msdu_start; } ;
struct ath10k {int dummy; } ;
typedef enum rx_msdu_decap_format { ____Placeholder_rx_msdu_decap_format } rx_msdu_decap_format ;


 int MS (int ,int ) ;
 int RX_MSDU_DECAP_RAW ;
 int RX_MSDU_START_INFO1_DECAP_FORMAT ;
 int __le32_to_cpu (int ) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int ath10k_unchain_msdu (struct sk_buff_head*,unsigned long*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;

__attribute__((used)) static void ath10k_htt_rx_h_unchain(struct ath10k *ar,
        struct sk_buff_head *amsdu,
        unsigned long *drop_cnt,
        unsigned long *unchain_cnt)
{
 struct sk_buff *first;
 struct htt_rx_desc *rxd;
 enum rx_msdu_decap_format decap;

 first = skb_peek(amsdu);
 rxd = (void *)first->data - sizeof(*rxd);
 decap = MS(__le32_to_cpu(rxd->msdu_start.common.info1),
     RX_MSDU_START_INFO1_DECAP_FORMAT);






 if (decap != RX_MSDU_DECAP_RAW ||
     skb_queue_len(amsdu) != 1 + rxd->frag_info.ring2_more_count) {
  *drop_cnt += skb_queue_len(amsdu);
  __skb_queue_purge(amsdu);
  return;
 }

 ath10k_unchain_msdu(amsdu, unchain_cnt);
}
