
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; void* tx_max_pending; void* rx_max_pending; } ;
struct ef4_nic {int txq_entries; int rxq_entries; } ;


 void* EF4_MAX_DMAQ_SIZE ;
 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ef4_ethtool_get_ringparam(struct net_device *net_dev,
          struct ethtool_ringparam *ring)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 ring->rx_max_pending = EF4_MAX_DMAQ_SIZE;
 ring->tx_max_pending = EF4_MAX_DMAQ_SIZE;
 ring->rx_pending = efx->rxq_entries;
 ring->tx_pending = efx->txq_entries;
}
