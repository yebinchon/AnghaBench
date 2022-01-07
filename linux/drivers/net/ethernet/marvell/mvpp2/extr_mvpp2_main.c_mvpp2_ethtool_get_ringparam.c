
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int MVPP2_MAX_RXD_MAX ;
 int MVPP2_MAX_TXD_MAX ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mvpp2_ethtool_get_ringparam(struct net_device *dev,
     struct ethtool_ringparam *ring)
{
 struct mvpp2_port *port = netdev_priv(dev);

 ring->rx_max_pending = MVPP2_MAX_RXD_MAX;
 ring->tx_max_pending = MVPP2_MAX_TXD_MAX;
 ring->rx_pending = port->rx_ring_size;
 ring->tx_pending = port->tx_ring_size;
}
