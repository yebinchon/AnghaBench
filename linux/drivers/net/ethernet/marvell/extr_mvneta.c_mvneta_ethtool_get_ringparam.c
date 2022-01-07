
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int MVNETA_MAX_RXD ;
 int MVNETA_MAX_TXD ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mvneta_ethtool_get_ringparam(struct net_device *netdev,
      struct ethtool_ringparam *ring)
{
 struct mvneta_port *pp = netdev_priv(netdev);

 ring->rx_max_pending = MVNETA_MAX_RXD;
 ring->tx_max_pending = MVNETA_MAX_TXD;
 ring->rx_pending = pp->rx_ring_size;
 ring->tx_pending = pp->tx_ring_size;
}
