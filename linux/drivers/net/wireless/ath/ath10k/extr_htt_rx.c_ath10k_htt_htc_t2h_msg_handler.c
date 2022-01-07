
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ath10k_htt_t2h_msg_handler (struct ath10k*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;

void ath10k_htt_htc_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
{
 bool release;

 release = ath10k_htt_t2h_msg_handler(ar, skb);


 if (release)
  dev_kfree_skb_any(skb);
}
