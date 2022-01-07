
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ ath10k_ce_completed_send_next (struct ath10k_ce_pipe*,void**) ;
 int ath10k_htc_tx_completion_handler (struct ath10k*,struct sk_buff*) ;

__attribute__((used)) static void ath10k_pci_htc_tx_cb(struct ath10k_ce_pipe *ce_state)
{
 struct ath10k *ar = ce_state->ar;
 struct sk_buff_head list;
 struct sk_buff *skb;

 __skb_queue_head_init(&list);
 while (ath10k_ce_completed_send_next(ce_state, (void **)&skb) == 0) {

  if (skb == ((void*)0))
   continue;

  __skb_queue_tail(&list, skb);
 }

 while ((skb = __skb_dequeue(&list)))
  ath10k_htc_tx_completion_handler(ar, skb);
}
