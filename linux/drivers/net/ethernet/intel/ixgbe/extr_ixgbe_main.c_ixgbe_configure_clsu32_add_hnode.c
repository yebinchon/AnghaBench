
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ divisor; int handle; } ;
struct tc_cls_u32_offload {TYPE_1__ hnode; } ;
struct ixgbe_adapter {int tables; } ;


 int EINVAL ;
 scalar_t__ IXGBE_MAX_LINK_HANDLE ;
 scalar_t__ TC_U32_USERHTID (int ) ;
 int set_bit (scalar_t__,int *) ;

__attribute__((used)) static int ixgbe_configure_clsu32_add_hnode(struct ixgbe_adapter *adapter,
         struct tc_cls_u32_offload *cls)
{
 u32 uhtid = TC_U32_USERHTID(cls->hnode.handle);

 if (uhtid >= IXGBE_MAX_LINK_HANDLE)
  return -EINVAL;




 if (cls->hnode.divisor > 0)
  return -EINVAL;

 set_bit(uhtid - 1, &adapter->tables);
 return 0;
}
