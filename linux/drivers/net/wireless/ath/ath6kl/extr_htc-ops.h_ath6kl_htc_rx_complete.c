
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ath6kl {TYPE_1__* htc_ops; } ;
struct TYPE_2__ {int (* rx_complete ) (struct ath6kl*,struct sk_buff*,int ) ;} ;


 int stub1 (struct ath6kl*,struct sk_buff*,int ) ;

__attribute__((used)) static inline void ath6kl_htc_rx_complete(struct ath6kl *ar,
       struct sk_buff *skb, u8 pipe)
{
 ar->htc_ops->rx_complete(ar, skb, pipe);
}
