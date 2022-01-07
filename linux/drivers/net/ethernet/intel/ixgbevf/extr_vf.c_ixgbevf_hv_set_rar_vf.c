
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int perm_addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int EOPNOTSUPP ;
 scalar_t__ ether_addr_equal (int *,int ) ;

__attribute__((used)) static s32 ixgbevf_hv_set_rar_vf(struct ixgbe_hw *hw, u32 index, u8 *addr,
     u32 vmdq)
{
 if (ether_addr_equal(addr, hw->mac.perm_addr))
  return 0;

 return -EOPNOTSUPP;
}
