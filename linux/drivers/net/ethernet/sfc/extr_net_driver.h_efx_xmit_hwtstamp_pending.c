
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;


 int SKBTX_IN_PROGRESS ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void efx_xmit_hwtstamp_pending(struct sk_buff *skb)
{
 skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
}
