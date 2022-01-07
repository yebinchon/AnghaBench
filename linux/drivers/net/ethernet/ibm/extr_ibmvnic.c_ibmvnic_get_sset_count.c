
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;


 int NUM_RX_STATS ;
 int NUM_TX_STATS ;
 int ibmvnic_priv_flags ;
 int ibmvnic_stats ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ibmvnic_get_sset_count(struct net_device *dev, int sset)
{
 struct ibmvnic_adapter *adapter = netdev_priv(dev);

 switch (sset) {
 case 128:
  return ARRAY_SIZE(ibmvnic_stats) +
         adapter->req_tx_queues * NUM_TX_STATS +
         adapter->req_rx_queues * NUM_RX_STATS;
 case 129:
  return ARRAY_SIZE(ibmvnic_priv_flags);
 default:
  return -EOPNOTSUPP;
 }
}
