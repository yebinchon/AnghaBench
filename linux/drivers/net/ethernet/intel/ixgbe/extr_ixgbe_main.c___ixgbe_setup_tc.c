
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int flow_block_cb_setup_simple (void*,int *,int ,struct ixgbe_adapter*,struct ixgbe_adapter*,int) ;
 int ixgbe_block_cb_list ;
 int ixgbe_setup_tc_block_cb ;
 int ixgbe_setup_tc_mqprio (struct net_device*,void*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int __ixgbe_setup_tc(struct net_device *dev, enum tc_setup_type type,
       void *type_data)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);

 switch (type) {
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &ixgbe_block_cb_list,
        ixgbe_setup_tc_block_cb,
        adapter, adapter, 1);
 case 128:
  return ixgbe_setup_tc_mqprio(dev, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
