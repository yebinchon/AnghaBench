
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct net_device {int dummy; } ;


 int TC_MQPRIO_HW_OFFLOAD_TCS ;
 int ixgbe_setup_tc (struct net_device*,int ) ;

__attribute__((used)) static int ixgbe_setup_tc_mqprio(struct net_device *dev,
     struct tc_mqprio_qopt *mqprio)
{
 mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
 return ixgbe_setup_tc(dev, mqprio->num_tc);
}
