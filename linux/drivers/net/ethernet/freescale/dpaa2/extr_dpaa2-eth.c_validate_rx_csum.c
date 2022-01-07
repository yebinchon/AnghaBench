
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; } ;
struct dpaa2_eth_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_UNNECESSARY ;
 int DPAA2_FAS_L3CV ;
 int DPAA2_FAS_L4CV ;
 int NETIF_F_RXCSUM ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static void validate_rx_csum(struct dpaa2_eth_priv *priv,
        u32 fd_status,
        struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if (!(priv->net_dev->features & NETIF_F_RXCSUM))
  return;


 if (!((fd_status & DPAA2_FAS_L3CV) &&
       (fd_status & DPAA2_FAS_L4CV)))
  return;


 skb->ip_summed = CHECKSUM_UNNECESSARY;
}
