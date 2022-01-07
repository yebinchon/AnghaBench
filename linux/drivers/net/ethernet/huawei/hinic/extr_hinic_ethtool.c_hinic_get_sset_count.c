
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hinic_dev {int num_qps; } ;


 int ARRAY_LEN (int ) ;
 int EOPNOTSUPP ;

 int hinic_function_stats ;
 int hinic_port_stats ;
 int hinic_rx_queue_stats ;
 int hinic_tx_queue_stats ;
 struct hinic_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hinic_get_sset_count(struct net_device *netdev, int sset)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 int count, q_num;

 switch (sset) {
 case 128:
  q_num = nic_dev->num_qps;
  count = ARRAY_LEN(hinic_function_stats) +
   (ARRAY_LEN(hinic_tx_queue_stats) +
   ARRAY_LEN(hinic_rx_queue_stats)) * q_num;

  count += ARRAY_LEN(hinic_port_stats);

  return count;
 default:
  return -EOPNOTSUPP;
 }
}
