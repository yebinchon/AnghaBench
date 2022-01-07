
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath6kl {int dummy; } ;


 int ath6kl_htc_tx_complete (struct ath6kl*,struct sk_buff*) ;

void ath6kl_core_tx_complete(struct ath6kl *ar, struct sk_buff *skb)
{
 ath6kl_htc_tx_complete(ar, skb);
}
