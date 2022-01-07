
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ath6kl {int dummy; } ;


 int ath6kl_htc_rx_complete (struct ath6kl*,struct sk_buff*,int ) ;

void ath6kl_core_rx_complete(struct ath6kl *ar, struct sk_buff *skb, u8 pipe)
{
 ath6kl_htc_rx_complete(ar, skb, pipe);
}
