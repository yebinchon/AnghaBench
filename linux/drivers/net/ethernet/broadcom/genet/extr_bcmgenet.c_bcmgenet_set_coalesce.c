
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ tx_max_coalesced_frames; scalar_t__ rx_max_coalesced_frames; int rx_coalesce_usecs; scalar_t__ use_adaptive_tx_coalesce; scalar_t__ tx_coalesce_usecs_low; scalar_t__ tx_coalesce_usecs_irq; scalar_t__ tx_coalesce_usecs_high; scalar_t__ tx_coalesce_usecs; } ;
struct bcmgenet_priv {int * rx_rings; TYPE_1__* hw_params; } ;
struct TYPE_2__ {unsigned int tx_queues; unsigned int rx_queues; } ;


 size_t DESC_INDEX ;
 scalar_t__ DMA_INTR_THRESHOLD_MASK ;
 int DMA_MBUF_DONE_THRESH ;
 int DMA_TIMEOUT_MASK ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int bcmgenet_set_ring_rx_coalesce (int *,struct ethtool_coalesce*) ;
 int bcmgenet_tdma_ring_writel (struct bcmgenet_priv*,size_t,scalar_t__,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcmgenet_set_coalesce(struct net_device *dev,
     struct ethtool_coalesce *ec)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 unsigned int i;





 if (ec->tx_max_coalesced_frames > DMA_INTR_THRESHOLD_MASK ||
     ec->tx_max_coalesced_frames == 0 ||
     ec->rx_max_coalesced_frames > DMA_INTR_THRESHOLD_MASK ||
     ec->rx_coalesce_usecs > (DMA_TIMEOUT_MASK * 8) + 1)
  return -EINVAL;

 if (ec->rx_coalesce_usecs == 0 && ec->rx_max_coalesced_frames == 0)
  return -EINVAL;





 if (ec->tx_coalesce_usecs || ec->tx_coalesce_usecs_high ||
     ec->tx_coalesce_usecs_irq || ec->tx_coalesce_usecs_low ||
     ec->use_adaptive_tx_coalesce)
  return -EOPNOTSUPP;




 for (i = 0; i < priv->hw_params->tx_queues; i++)
  bcmgenet_tdma_ring_writel(priv, i,
       ec->tx_max_coalesced_frames,
       DMA_MBUF_DONE_THRESH);
 bcmgenet_tdma_ring_writel(priv, DESC_INDEX,
      ec->tx_max_coalesced_frames,
      DMA_MBUF_DONE_THRESH);

 for (i = 0; i < priv->hw_params->rx_queues; i++)
  bcmgenet_set_ring_rx_coalesce(&priv->rx_rings[i], ec);
 bcmgenet_set_ring_rx_coalesce(&priv->rx_rings[DESC_INDEX], ec);

 return 0;
}
