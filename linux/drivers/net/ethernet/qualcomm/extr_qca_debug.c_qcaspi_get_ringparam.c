
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct qcaspi {TYPE_1__ txr; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_max_pending; int rx_pending; int tx_pending; int tx_max_pending; } ;


 int TX_RING_MAX_LEN ;
 struct qcaspi* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
qcaspi_get_ringparam(struct net_device *dev, struct ethtool_ringparam *ring)
{
 struct qcaspi *qca = netdev_priv(dev);

 ring->rx_max_pending = 4;
 ring->tx_max_pending = TX_RING_MAX_LEN;
 ring->rx_pending = 4;
 ring->tx_pending = qca->txr.count;
}
