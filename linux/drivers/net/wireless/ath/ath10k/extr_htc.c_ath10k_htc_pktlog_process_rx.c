
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int trace_ath10k_htt_pktlog (struct ath10k*,int ,int ) ;

__attribute__((used)) static void ath10k_htc_pktlog_process_rx(struct ath10k *ar, struct sk_buff *skb)
{
 trace_ath10k_htt_pktlog(ar, skb->data, skb->len);
 dev_kfree_skb_any(skb);
}
