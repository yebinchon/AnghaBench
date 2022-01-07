
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int (* clear_vmdq ) (struct ixgbe_hw*,scalar_t__,int ) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_CLEAR_VMDQ_ALL ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_RAH (scalar_t__) ;
 int IXGBE_RAH_AV ;
 int IXGBE_RAL (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*,scalar_t__) ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int ) ;

s32 ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index)
{
 u32 rar_high;
 u32 rar_entries = hw->mac.num_rar_entries;


 if (index >= rar_entries) {
  hw_dbg(hw, "RAR index %d is out of range.\n", index);
  return IXGBE_ERR_INVALID_ARGUMENT;
 }






 rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(index));
 rar_high &= ~(0x0000FFFF | IXGBE_RAH_AV);





 IXGBE_WRITE_REG(hw, IXGBE_RAH(index), rar_high);
 IXGBE_WRITE_FLUSH(hw);
 IXGBE_WRITE_REG(hw, IXGBE_RAL(index), 0);


 hw->mac.ops.clear_vmdq(hw, index, IXGBE_CLEAR_VMDQ_ALL);

 return 0;
}
