
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgb_hw {int dummy; } ;


 scalar_t__ IXGB_VLAN_FILTER_TBL_SIZE ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,scalar_t__,int ) ;
 int VFTA ;

__attribute__((used)) static void
ixgb_clear_vfta(struct ixgb_hw *hw)
{
 u32 offset;

 for (offset = 0; offset < IXGB_VLAN_FILTER_TBL_SIZE; offset++)
  IXGB_WRITE_REG_ARRAY(hw, VFTA, offset, 0);
}
