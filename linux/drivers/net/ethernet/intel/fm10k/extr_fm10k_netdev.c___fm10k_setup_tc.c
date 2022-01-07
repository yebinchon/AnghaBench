
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int TC_MQPRIO_HW_OFFLOAD_TCS ;
 int TC_SETUP_QDISC_MQPRIO ;
 int fm10k_setup_tc (struct net_device*,int ) ;

__attribute__((used)) static int __fm10k_setup_tc(struct net_device *dev, enum tc_setup_type type,
       void *type_data)
{
 struct tc_mqprio_qopt *mqprio = type_data;

 if (type != TC_SETUP_QDISC_MQPRIO)
  return -EOPNOTSUPP;

 mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;

 return fm10k_setup_tc(dev, mqprio->num_tc);
}
