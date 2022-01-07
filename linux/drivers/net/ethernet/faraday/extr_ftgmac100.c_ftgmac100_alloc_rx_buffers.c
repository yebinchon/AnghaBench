
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100_rxdes {int dummy; } ;
struct ftgmac100 {int rx_q_entries; struct ftgmac100_rxdes* rxdes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ftgmac100_alloc_rx_buf (struct ftgmac100*,int,struct ftgmac100_rxdes*,int ) ;

__attribute__((used)) static int ftgmac100_alloc_rx_buffers(struct ftgmac100 *priv)
{
 int i;

 for (i = 0; i < priv->rx_q_entries; i++) {
  struct ftgmac100_rxdes *rxdes = &priv->rxdes[i];

  if (ftgmac100_alloc_rx_buf(priv, i, rxdes, GFP_KERNEL))
   return -ENOMEM;
 }
 return 0;
}
