
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct ef4_nic {int net_dev; } ;


 scalar_t__ EF4_MAX_DMAQ_SIZE ;
 scalar_t__ EF4_RXQ_MIN_ENT ;
 int EF4_TXQ_MIN_ENT (struct ef4_nic*) ;
 int EINVAL ;
 int drv ;
 int ef4_realloc_channels (struct ef4_nic*,scalar_t__,scalar_t__) ;
 scalar_t__ max (scalar_t__,int ) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,scalar_t__) ;
 int netif_warn (struct ef4_nic*,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int ef4_ethtool_set_ringparam(struct net_device *net_dev,
         struct ethtool_ringparam *ring)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 u32 txq_entries;

 if (ring->rx_mini_pending || ring->rx_jumbo_pending ||
     ring->rx_pending > EF4_MAX_DMAQ_SIZE ||
     ring->tx_pending > EF4_MAX_DMAQ_SIZE)
  return -EINVAL;

 if (ring->rx_pending < EF4_RXQ_MIN_ENT) {
  netif_err(efx, drv, efx->net_dev,
     "RX queues cannot be smaller than %u\n",
     EF4_RXQ_MIN_ENT);
  return -EINVAL;
 }

 txq_entries = max(ring->tx_pending, EF4_TXQ_MIN_ENT(efx));
 if (txq_entries != ring->tx_pending)
  netif_warn(efx, drv, efx->net_dev,
      "increasing TX queue size to minimum of %u\n",
      txq_entries);

 return ef4_realloc_channels(efx, ring->rx_pending, txq_entries);
}
