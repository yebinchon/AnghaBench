
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int rx_pending; scalar_t__ tx_pending; int tx_ring_size; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; scalar_t__ tx_pending; } ;


 int EINVAL ;
 int RX_MAX_PENDING ;
 scalar_t__ TX_MAX_PENDING ;
 scalar_t__ TX_MIN_PENDING ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int roundup_ring_size (scalar_t__) ;
 int sky2_detach (struct net_device*) ;
 int sky2_reattach (struct net_device*) ;

__attribute__((used)) static int sky2_set_ringparam(struct net_device *dev,
         struct ethtool_ringparam *ering)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 if (ering->rx_pending > RX_MAX_PENDING ||
     ering->rx_pending < 8 ||
     ering->tx_pending < TX_MIN_PENDING ||
     ering->tx_pending > TX_MAX_PENDING)
  return -EINVAL;

 sky2_detach(dev);

 sky2->rx_pending = ering->rx_pending;
 sky2->tx_pending = ering->tx_pending;
 sky2->tx_ring_size = roundup_ring_size(sky2->tx_pending);

 return sky2_reattach(dev);
}
