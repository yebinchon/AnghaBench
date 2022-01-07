
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k_htc_hdr {int dummy; } ;
struct ath10k {int dummy; } ;


 int ath10k_htt_t2h_msg_handler (struct ath10k*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void ath10k_snoc_htt_rx_deliver(struct ath10k *ar, struct sk_buff *skb)
{
 skb_pull(skb, sizeof(struct ath10k_htc_hdr));
 ath10k_htt_t2h_msg_handler(ar, skb);
}
