
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;



 int flow_block_cb_setup_simple (void*,int *,int ,struct igb_adapter*,struct igb_adapter*,int) ;
 int igb_block_cb_list ;
 int igb_offload_cbs (struct igb_adapter*,void*) ;
 int igb_offload_txtime (struct igb_adapter*,void*) ;
 int igb_setup_tc_block_cb ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_setup_tc(struct net_device *dev, enum tc_setup_type type,
   void *type_data)
{
 struct igb_adapter *adapter = netdev_priv(dev);

 switch (type) {
 case 129:
  return igb_offload_cbs(adapter, type_data);
 case 130:
  return flow_block_cb_setup_simple(type_data,
        &igb_block_cb_list,
        igb_setup_tc_block_cb,
        adapter, adapter, 1);

 case 128:
  return igb_offload_txtime(adapter, type_data);

 default:
  return -EOPNOTSUPP;
 }
}
