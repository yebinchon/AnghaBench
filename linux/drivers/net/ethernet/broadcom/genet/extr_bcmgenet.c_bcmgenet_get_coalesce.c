
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int tx_max_coalesced_frames; } ;
struct TYPE_4__ {int use_dim; } ;
struct bcmgenet_rx_ring {TYPE_2__ dim; } ;
struct bcmgenet_priv {struct bcmgenet_rx_ring* rx_rings; TYPE_1__* hw_params; } ;
struct TYPE_3__ {unsigned int rx_queues; } ;


 size_t DESC_INDEX ;
 int DMA_MBUF_DONE_THRESH ;
 int DMA_RING16_TIMEOUT ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rdma_ring_readl (struct bcmgenet_priv*,size_t,int ) ;
 int bcmgenet_tdma_ring_readl (struct bcmgenet_priv*,size_t,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcmgenet_get_coalesce(struct net_device *dev,
     struct ethtool_coalesce *ec)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct bcmgenet_rx_ring *ring;
 unsigned int i;

 ec->tx_max_coalesced_frames =
  bcmgenet_tdma_ring_readl(priv, DESC_INDEX,
      DMA_MBUF_DONE_THRESH);
 ec->rx_max_coalesced_frames =
  bcmgenet_rdma_ring_readl(priv, DESC_INDEX,
      DMA_MBUF_DONE_THRESH);
 ec->rx_coalesce_usecs =
  bcmgenet_rdma_readl(priv, DMA_RING16_TIMEOUT) * 8192 / 1000;

 for (i = 0; i < priv->hw_params->rx_queues; i++) {
  ring = &priv->rx_rings[i];
  ec->use_adaptive_rx_coalesce |= ring->dim.use_dim;
 }
 ring = &priv->rx_rings[DESC_INDEX];
 ec->use_adaptive_rx_coalesce |= ring->dim.use_dim;

 return 0;
}
