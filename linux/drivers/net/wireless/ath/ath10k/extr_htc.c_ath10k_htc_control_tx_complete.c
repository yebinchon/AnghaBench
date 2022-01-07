
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void ath10k_htc_control_tx_complete(struct ath10k *ar,
        struct sk_buff *skb)
{
 kfree_skb(skb);
}
