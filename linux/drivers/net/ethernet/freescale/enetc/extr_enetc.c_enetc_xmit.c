
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int active_offloads; struct enetc_bdr** tx_ring; } ;
struct enetc_bdr {int index; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int nr_frags; } ;


 int ENETC_MAX_SKB_FRAGS ;
 scalar_t__ ENETC_TXBDS_MAX_NEEDED ;
 scalar_t__ ENETC_TXBDS_NEEDED (int) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ enetc_bd_unused (struct enetc_bdr*) ;
 int enetc_map_tx_buffs (struct enetc_bdr*,struct sk_buff*,int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int netif_stop_subqueue (struct net_device*,int ) ;
 int skb_linearize (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t enetc_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_bdr *tx_ring;
 int count;

 tx_ring = priv->tx_ring[skb->queue_mapping];

 if (unlikely(skb_shinfo(skb)->nr_frags > ENETC_MAX_SKB_FRAGS))
  if (unlikely(skb_linearize(skb)))
   goto drop_packet_err;

 count = skb_shinfo(skb)->nr_frags + 1;
 if (enetc_bd_unused(tx_ring) < ENETC_TXBDS_NEEDED(count)) {
  netif_stop_subqueue(ndev, tx_ring->index);
  return NETDEV_TX_BUSY;
 }

 count = enetc_map_tx_buffs(tx_ring, skb, priv->active_offloads);
 if (unlikely(!count))
  goto drop_packet_err;

 if (enetc_bd_unused(tx_ring) < ENETC_TXBDS_MAX_NEEDED)
  netif_stop_subqueue(ndev, tx_ring->index);

 return NETDEV_TX_OK;

drop_packet_err:
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
