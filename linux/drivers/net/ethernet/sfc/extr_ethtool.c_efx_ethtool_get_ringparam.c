
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct efx_nic {int txq_entries; int rxq_entries; } ;


 int EFX_MAX_DMAQ_SIZE ;
 int EFX_TXQ_MAX_ENT (struct efx_nic*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void efx_ethtool_get_ringparam(struct net_device *net_dev,
          struct ethtool_ringparam *ring)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 ring->rx_max_pending = EFX_MAX_DMAQ_SIZE;
 ring->tx_max_pending = EFX_TXQ_MAX_ENT(efx);
 ring->rx_pending = efx->rxq_entries;
 ring->tx_pending = efx->txq_entries;
}
