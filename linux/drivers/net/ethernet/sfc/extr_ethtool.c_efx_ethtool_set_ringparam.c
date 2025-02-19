
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct efx_nic {int net_dev; } ;


 int EFX_MAX_DMAQ_SIZE ;
 int EFX_RXQ_MIN_ENT ;
 scalar_t__ EFX_TXQ_MAX_ENT (struct efx_nic*) ;
 int EFX_TXQ_MIN_ENT (struct efx_nic*) ;
 int EINVAL ;
 int drv ;
 int efx_realloc_channels (struct efx_nic*,int ,scalar_t__) ;
 scalar_t__ max (scalar_t__,int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int efx_ethtool_set_ringparam(struct net_device *net_dev,
         struct ethtool_ringparam *ring)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 u32 txq_entries;

 if (ring->rx_mini_pending || ring->rx_jumbo_pending ||
     ring->rx_pending > EFX_MAX_DMAQ_SIZE ||
     ring->tx_pending > EFX_TXQ_MAX_ENT(efx))
  return -EINVAL;

 if (ring->rx_pending < EFX_RXQ_MIN_ENT) {
  netif_err(efx, drv, efx->net_dev,
     "RX queues cannot be smaller than %u\n",
     EFX_RXQ_MIN_ENT);
  return -EINVAL;
 }

 txq_entries = max(ring->tx_pending, EFX_TXQ_MIN_ENT(efx));
 if (txq_entries != ring->tx_pending)
  netif_warn(efx, drv, efx->net_dev,
      "increasing TX queue size to minimum of %u\n",
      txq_entries);

 return efx_realloc_channels(efx, ring->rx_pending, txq_entries);
}
