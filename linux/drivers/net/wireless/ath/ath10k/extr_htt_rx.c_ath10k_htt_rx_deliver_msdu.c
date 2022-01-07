
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_msdus_q; } ;
struct ath10k {TYPE_1__ htt; } ;


 int ath10k_process_rx (struct ath10k*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static int ath10k_htt_rx_deliver_msdu(struct ath10k *ar, int quota, int budget)
{
 struct sk_buff *skb;

 while (quota < budget) {
  if (skb_queue_empty(&ar->htt.rx_msdus_q))
   break;

  skb = skb_dequeue(&ar->htt.rx_msdus_q);
  if (!skb)
   break;
  ath10k_process_rx(ar, skb);
  quota++;
 }

 return quota;
}
