
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int rx_pending; int napi; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; } ;


 int EINVAL ;
 int RTL8152_MAX_RX ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8152_set_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ring)
{
 struct r8152 *tp = netdev_priv(netdev);

 if (ring->rx_pending < (RTL8152_MAX_RX * 2))
  return -EINVAL;

 if (tp->rx_pending != ring->rx_pending) {
  napi_disable(&tp->napi);
  tp->rx_pending = ring->rx_pending;
  napi_enable(&tp->napi);
 }

 return 0;
}
