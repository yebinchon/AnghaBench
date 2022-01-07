
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgbe_prv_data {int rx_ring_count; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;

 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_get_rxnfc(struct net_device *netdev,
     struct ethtool_rxnfc *rxnfc, u32 *rule_locs)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 switch (rxnfc->cmd) {
 case 128:
  rxnfc->data = pdata->rx_ring_count;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
