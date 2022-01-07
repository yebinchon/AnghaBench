
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

void ath10k_htt_hif_tx_complete(struct ath10k *ar, struct sk_buff *skb)
{
 dev_kfree_skb_any(skb);
}
