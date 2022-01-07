
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int TC_MQPRIO_HW_OFFLOAD_TCS ;


 int flow_block_cb_setup_simple (void*,int *,int ,struct qede_dev*,struct qede_dev*,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_block_cb_list ;
 int qede_setup_tc (struct net_device*,int ) ;
 int qede_setup_tc_block_cb ;

__attribute__((used)) static int
qede_setup_tc_offload(struct net_device *dev, enum tc_setup_type type,
        void *type_data)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct tc_mqprio_qopt *mqprio;

 switch (type) {
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &qede_block_cb_list,
        qede_setup_tc_block_cb,
        edev, edev, 1);
 case 128:
  mqprio = type_data;

  mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
  return qede_setup_tc(dev, mqprio->num_tc);
 default:
  return -EOPNOTSUPP;
 }
}
