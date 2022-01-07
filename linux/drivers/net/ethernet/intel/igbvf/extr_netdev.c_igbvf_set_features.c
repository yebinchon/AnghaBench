
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; } ;
typedef int netdev_features_t ;


 int IGBVF_FLAG_RX_CSUM_DISABLED ;
 int NETIF_F_RXCSUM ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igbvf_set_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (features & NETIF_F_RXCSUM)
  adapter->flags &= ~IGBVF_FLAG_RX_CSUM_DISABLED;
 else
  adapter->flags |= IGBVF_FLAG_RX_CSUM_DISABLED;

 return 0;
}
