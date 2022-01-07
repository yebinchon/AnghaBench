
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct net_device {int dummy; } ;
struct bnxt {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int TC_MQPRIO_HW_OFFLOAD_TCS ;


 int bnxt_block_cb_list ;
 int bnxt_setup_mq_tc (struct net_device*,int ) ;
 int bnxt_setup_tc_block_cb ;
 int flow_block_cb_setup_simple (void*,int *,int ,struct bnxt*,struct bnxt*,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_setup_tc(struct net_device *dev, enum tc_setup_type type,
    void *type_data)
{
 struct bnxt *bp = netdev_priv(dev);

 switch (type) {
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &bnxt_block_cb_list,
        bnxt_setup_tc_block_cb,
        bp, bp, 1);
 case 128: {
  struct tc_mqprio_qopt *mqprio = type_data;

  mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;

  return bnxt_setup_mq_tc(dev, mqprio->num_tc);
 }
 default:
  return -EOPNOTSUPP;
 }
}
