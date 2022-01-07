
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int TC_SETUP_QDISC_MQPRIO ;
 int hns3_setup_tc (struct net_device*,void*) ;

__attribute__((used)) static int hns3_nic_setup_tc(struct net_device *dev, enum tc_setup_type type,
        void *type_data)
{
 if (type != TC_SETUP_QDISC_MQPRIO)
  return -EOPNOTSUPP;

 return hns3_setup_tc(dev, type_data);
}
