
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int num_rx_qs; int num_tx_qs; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ETHTOOL_RXSTATS_NUM ;
 int ETHTOOL_STATS_NUM ;
 int ETHTOOL_TESTS_NUM ;
 int ETHTOOL_TXSTATS_NUM ;



 int be_priv_flags ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_sset_count(struct net_device *netdev, int stringset)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 switch (stringset) {
 case 128:
  return ETHTOOL_TESTS_NUM;
 case 129:
  return ETHTOOL_STATS_NUM +
   adapter->num_rx_qs * ETHTOOL_RXSTATS_NUM +
   adapter->num_tx_qs * ETHTOOL_TXSTATS_NUM;
 case 130:
  return ARRAY_SIZE(be_priv_flags);
 default:
  return -EINVAL;
 }
}
