
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int vmxnet3_global_stats ;
 int vmxnet3_rq_dev_stats ;
 int vmxnet3_rq_driver_stats ;
 int vmxnet3_tq_dev_stats ;
 int vmxnet3_tq_driver_stats ;

__attribute__((used)) static int
vmxnet3_get_sset_count(struct net_device *netdev, int sset)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 switch (sset) {
 case 128:
  return (ARRAY_SIZE(vmxnet3_tq_dev_stats) +
   ARRAY_SIZE(vmxnet3_tq_driver_stats)) *
         adapter->num_tx_queues +
         (ARRAY_SIZE(vmxnet3_rq_dev_stats) +
   ARRAY_SIZE(vmxnet3_rq_driver_stats)) *
         adapter->num_rx_queues +
   ARRAY_SIZE(vmxnet3_global_stats);
 default:
  return -EOPNOTSUPP;
 }
}
