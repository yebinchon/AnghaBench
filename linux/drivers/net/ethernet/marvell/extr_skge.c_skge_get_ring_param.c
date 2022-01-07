
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct skge_port {TYPE_2__ tx_ring; TYPE_1__ rx_ring; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int MAX_RX_RING_SIZE ;
 int MAX_TX_RING_SIZE ;
 struct skge_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void skge_get_ring_param(struct net_device *dev,
    struct ethtool_ringparam *p)
{
 struct skge_port *skge = netdev_priv(dev);

 p->rx_max_pending = MAX_RX_RING_SIZE;
 p->tx_max_pending = MAX_TX_RING_SIZE;

 p->rx_pending = skge->rx_ring.count;
 p->tx_pending = skge->tx_ring.count;
}
