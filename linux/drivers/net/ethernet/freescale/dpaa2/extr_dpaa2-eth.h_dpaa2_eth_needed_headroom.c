
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct dpaa2_eth_priv {scalar_t__ tx_tstamp; } ;
struct TYPE_2__ {int tx_flags; } ;


 unsigned int DPAA2_ETH_SWA_SIZE ;
 scalar_t__ DPAA2_ETH_TX_HWA_SIZE ;
 int SKBTX_HW_TSTAMP ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline
unsigned int dpaa2_eth_needed_headroom(struct dpaa2_eth_priv *priv,
           struct sk_buff *skb)
{
 unsigned int headroom = DPAA2_ETH_SWA_SIZE;




 if (!skb)
  return headroom;




 if (skb_is_nonlinear(skb))
  return 0;


 if (priv->tx_tstamp && skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)
  headroom += DPAA2_ETH_TX_HWA_SIZE;

 return headroom;
}
