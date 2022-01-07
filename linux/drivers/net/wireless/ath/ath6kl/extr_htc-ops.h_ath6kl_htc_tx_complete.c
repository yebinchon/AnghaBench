
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ath6kl {TYPE_1__* htc_ops; } ;
struct TYPE_2__ {int (* tx_complete ) (struct ath6kl*,struct sk_buff*) ;} ;


 int stub1 (struct ath6kl*,struct sk_buff*) ;

__attribute__((used)) static inline void ath6kl_htc_tx_complete(struct ath6kl *ar,
       struct sk_buff *skb)
{
 ar->htc_ops->tx_complete(ar, skb);
}
