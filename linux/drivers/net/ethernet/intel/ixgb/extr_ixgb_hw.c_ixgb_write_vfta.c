
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int ,int ) ;
 int VFTA ;

void
ixgb_write_vfta(struct ixgb_hw *hw,
   u32 offset,
   u32 value)
{
 IXGB_WRITE_REG_ARRAY(hw, VFTA, offset, value);
}
