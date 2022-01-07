
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ena_adapter {int num_queues; } ;


 int ENA_STATS_ARRAY_ENA_COM ;
 int ENA_STATS_ARRAY_GLOBAL ;
 int ENA_STATS_ARRAY_RX ;
 int ENA_STATS_ARRAY_TX ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 struct ena_adapter* netdev_priv (struct net_device*) ;

int ena_get_sset_count(struct net_device *netdev, int sset)
{
 struct ena_adapter *adapter = netdev_priv(netdev);

 if (sset != ETH_SS_STATS)
  return -EOPNOTSUPP;

 return adapter->num_queues * (ENA_STATS_ARRAY_TX + ENA_STATS_ARRAY_RX)
  + ENA_STATS_ARRAY_GLOBAL + ENA_STATS_ARRAY_ENA_COM;
}
