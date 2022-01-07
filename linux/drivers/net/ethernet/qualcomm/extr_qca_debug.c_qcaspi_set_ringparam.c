
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct qcaspi {TYPE_1__ txr; } ;
struct net_device_ops {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct ethtool_ringparam {int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; scalar_t__ rx_pending; } ;


 int EINVAL ;
 int TX_RING_MAX_LEN ;
 int TX_RING_MIN_LEN ;
 int max_t (int ,int ,int ) ;
 int min_t (int ,int ,int ) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 int u16 ;
 int u32 ;

__attribute__((used)) static int
qcaspi_set_ringparam(struct net_device *dev, struct ethtool_ringparam *ring)
{
 const struct net_device_ops *ops = dev->netdev_ops;
 struct qcaspi *qca = netdev_priv(dev);

 if ((ring->rx_pending) ||
     (ring->rx_mini_pending) ||
     (ring->rx_jumbo_pending))
  return -EINVAL;

 if (netif_running(dev))
  ops->ndo_stop(dev);

 qca->txr.count = max_t(u32, ring->tx_pending, TX_RING_MIN_LEN);
 qca->txr.count = min_t(u16, qca->txr.count, TX_RING_MAX_LEN);

 if (netif_running(dev))
  ops->ndo_open(dev);

 return 0;
}
