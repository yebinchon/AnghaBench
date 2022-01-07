
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ (* setup_internal_link ) (struct ixgbe_hw*) ;} ;
struct ixgbe_phy_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ixgbe_get_lasi_ext_t_x550em (struct ixgbe_hw*,int*) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
{
 struct ixgbe_phy_info *phy = &hw->phy;
 bool lsc;
 u32 status;

 status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
 if (status)
  return status;

 if (lsc && phy->ops.setup_internal_link)
  return phy->ops.setup_internal_link(hw);

 return 0;
}
