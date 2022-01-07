
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int netdev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int ixgbe_setup_tc_cls_u32 (struct ixgbe_adapter*,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int ixgbe_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
       void *cb_priv)
{
 struct ixgbe_adapter *adapter = cb_priv;

 if (!tc_cls_can_offload_and_chain0(adapter->netdev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return ixgbe_setup_tc_cls_u32(adapter, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
