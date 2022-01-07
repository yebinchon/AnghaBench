
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int rx_pending; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; int rx_max_pending; } ;


 int RTL8152_RX_MAX_PENDING ;
 struct r8152* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rtl8152_get_ringparam(struct net_device *netdev,
      struct ethtool_ringparam *ring)
{
 struct r8152 *tp = netdev_priv(netdev);

 ring->rx_max_pending = RTL8152_RX_MAX_PENDING;
 ring->rx_pending = tp->rx_pending;
}
