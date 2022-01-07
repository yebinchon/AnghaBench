
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tx_ring_count; int rx_ring_count; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int XGBE_STATS_COUNT ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_get_sset_count(struct net_device *netdev, int stringset)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 int ret;

 switch (stringset) {
 case 128:
  ret = XGBE_STATS_COUNT +
        (pdata->tx_ring_count * 2) +
        (pdata->rx_ring_count * 2);
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
