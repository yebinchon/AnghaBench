
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {struct gfar_priv_rx_q** rx_queue; struct gfar_priv_tx_q** tx_queue; } ;
struct gfar_priv_tx_q {int tx_ring_size; } ;
struct gfar_priv_rx_q {int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; int rx_jumbo_pending; int rx_mini_pending; int rx_pending; int tx_max_pending; void* rx_jumbo_max_pending; void* rx_mini_max_pending; void* rx_max_pending; } ;


 void* GFAR_RX_MAX_RING_SIZE ;
 int GFAR_TX_MAX_RING_SIZE ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gfar_gringparam(struct net_device *dev,
       struct ethtool_ringparam *rvals)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct gfar_priv_tx_q *tx_queue = ((void*)0);
 struct gfar_priv_rx_q *rx_queue = ((void*)0);

 tx_queue = priv->tx_queue[0];
 rx_queue = priv->rx_queue[0];

 rvals->rx_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->rx_mini_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->rx_jumbo_max_pending = GFAR_RX_MAX_RING_SIZE;
 rvals->tx_max_pending = GFAR_TX_MAX_RING_SIZE;




 rvals->rx_pending = rx_queue->rx_ring_size;
 rvals->rx_mini_pending = rx_queue->rx_ring_size;
 rvals->rx_jumbo_pending = rx_queue->rx_ring_size;
 rvals->tx_pending = tx_queue->tx_ring_size;
}
