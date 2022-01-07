
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_u32_offload {int command; } ;
struct ixgbe_adapter {int dummy; } ;


 int EOPNOTSUPP ;






 int ixgbe_configure_clsu32 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ;
 int ixgbe_configure_clsu32_add_hnode (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ;
 int ixgbe_configure_clsu32_del_hnode (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ;
 int ixgbe_delete_clsu32 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ;

__attribute__((used)) static int ixgbe_setup_tc_cls_u32(struct ixgbe_adapter *adapter,
      struct tc_cls_u32_offload *cls_u32)
{
 switch (cls_u32->command) {
 case 130:
 case 128:
  return ixgbe_configure_clsu32(adapter, cls_u32);
 case 132:
  return ixgbe_delete_clsu32(adapter, cls_u32);
 case 131:
 case 129:
  return ixgbe_configure_clsu32_add_hnode(adapter, cls_u32);
 case 133:
  return ixgbe_configure_clsu32_del_hnode(adapter, cls_u32);
 default:
  return -EOPNOTSUPP;
 }
}
