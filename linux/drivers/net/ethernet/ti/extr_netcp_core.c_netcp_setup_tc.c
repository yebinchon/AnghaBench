
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct net_device {int real_num_tx_queues; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int TC_MQPRIO_HW_OFFLOAD_TCS ;
 int TC_SETUP_QDISC_MQPRIO ;
 int netdev_reset_tc (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_tc_queue (struct net_device*,int,int,int) ;

__attribute__((used)) static int netcp_setup_tc(struct net_device *dev, enum tc_setup_type type,
     void *type_data)
{
 struct tc_mqprio_qopt *mqprio = type_data;
 u8 num_tc;
 int i;


 ASSERT_RTNL();

 if (type != TC_SETUP_QDISC_MQPRIO)
  return -EOPNOTSUPP;

 mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
 num_tc = mqprio->num_tc;


 if ((dev->real_num_tx_queues <= 1) ||
     (dev->real_num_tx_queues < num_tc))
  return -EINVAL;


 if (num_tc) {
  netdev_set_num_tc(dev, num_tc);
  for (i = 0; i < num_tc; i++)
   netdev_set_tc_queue(dev, i, 1, i);
 } else {
  netdev_reset_tc(dev);
 }

 return 0;
}
