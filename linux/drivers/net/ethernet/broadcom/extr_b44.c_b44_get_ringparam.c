
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; scalar_t__ rx_max_pending; } ;
struct b44 {int rx_pending; } ;


 scalar_t__ B44_RX_RING_SIZE ;
 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static void b44_get_ringparam(struct net_device *dev,
         struct ethtool_ringparam *ering)
{
 struct b44 *bp = netdev_priv(dev);

 ering->rx_max_pending = B44_RX_RING_SIZE - 1;
 ering->rx_pending = bp->rx_pending;


}
