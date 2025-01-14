
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ __u32 ;


 int EINVAL ;
 int QLCNIC_RX_QUEUE ;
 int QLCNIC_TX_QUEUE ;
 int is_power_of_2 (scalar_t__) ;
 int netdev_err (struct net_device*,char*,...) ;
 scalar_t__ num_online_cpus () ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_check_multi_tx (struct qlcnic_adapter*) ;
 int strcpy (char*,char*) ;

int qlcnic_validate_rings(struct qlcnic_adapter *adapter, __u32 ring_cnt,
     int queue_type)
{
 struct net_device *netdev = adapter->netdev;
 char buf[8];

 if (queue_type == QLCNIC_RX_QUEUE)
  strcpy(buf, "SDS");
 else
  strcpy(buf, "Tx");

 if (!is_power_of_2(ring_cnt)) {
  netdev_err(netdev, "%s rings value should be a power of 2\n",
      buf);
  return -EINVAL;
 }

 if (qlcnic_82xx_check(adapter) && (queue_type == QLCNIC_TX_QUEUE) &&
     !qlcnic_check_multi_tx(adapter)) {
   netdev_err(netdev, "No Multi Tx queue support\n");
   return -EINVAL;
 }

 if (ring_cnt > num_online_cpus()) {
  netdev_err(netdev,
      "%s value[%u] should not be higher than, number of online CPUs\n",
      buf, num_online_cpus());
  return -EINVAL;
 }

 return 0;
}
