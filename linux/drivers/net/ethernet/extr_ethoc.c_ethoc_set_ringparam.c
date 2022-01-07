
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mem_start; int irq; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct ethoc {scalar_t__ num_bd; scalar_t__ num_rx; int num_tx; } ;


 int EINVAL ;
 int INT_MASK_RX ;
 int INT_MASK_TX ;
 int ethoc_disable_irq (struct ethoc*,int) ;
 int ethoc_disable_rx_and_tx (struct ethoc*) ;
 int ethoc_enable_irq (struct ethoc*,int) ;
 int ethoc_enable_rx_and_tx (struct ethoc*) ;
 int ethoc_init_ring (struct ethoc*,int ) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rounddown_pow_of_two (scalar_t__) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int ethoc_set_ringparam(struct net_device *dev,
          struct ethtool_ringparam *ring)
{
 struct ethoc *priv = netdev_priv(dev);

 if (ring->tx_pending < 1 || ring->rx_pending < 1 ||
     ring->tx_pending + ring->rx_pending > priv->num_bd)
  return -EINVAL;
 if (ring->rx_mini_pending || ring->rx_jumbo_pending)
  return -EINVAL;

 if (netif_running(dev)) {
  netif_tx_disable(dev);
  ethoc_disable_rx_and_tx(priv);
  ethoc_disable_irq(priv, INT_MASK_TX | INT_MASK_RX);
  synchronize_irq(dev->irq);
 }

 priv->num_tx = rounddown_pow_of_two(ring->tx_pending);
 priv->num_rx = ring->rx_pending;
 ethoc_init_ring(priv, dev->mem_start);

 if (netif_running(dev)) {
  ethoc_enable_irq(priv, INT_MASK_TX | INT_MASK_RX);
  ethoc_enable_rx_and_tx(priv);
  netif_wake_queue(dev);
 }
 return 0;
}
