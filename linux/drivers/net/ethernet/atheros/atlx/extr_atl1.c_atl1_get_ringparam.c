
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct atl1_tpd_ring {int count; } ;
struct atl1_rfd_ring {int count; } ;
struct atl1_adapter {struct atl1_rfd_ring rfd_ring; struct atl1_tpd_ring tpd_ring; } ;


 int ATL1_MAX_RFD ;
 int ATL1_MAX_TPD ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1_get_ringparam(struct net_device *netdev,
 struct ethtool_ringparam *ring)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 struct atl1_tpd_ring *txdr = &adapter->tpd_ring;
 struct atl1_rfd_ring *rxdr = &adapter->rfd_ring;

 ring->rx_max_pending = ATL1_MAX_RFD;
 ring->tx_max_pending = ATL1_MAX_TPD;
 ring->rx_pending = rxdr->count;
 ring->tx_pending = txdr->count;
}
