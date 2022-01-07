
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int (* set_vmdq ) (struct ixgbe_hw*,scalar_t__,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_RAH (scalar_t__) ;
 int IXGBE_RAH_AV ;
 int IXGBE_RAL (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*,scalar_t__) ;
 int stub1 (struct ixgbe_hw*,scalar_t__,scalar_t__) ;

s32 ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
     u32 enable_addr)
{
 u32 rar_low, rar_high;
 u32 rar_entries = hw->mac.num_rar_entries;


 if (index >= rar_entries) {
  hw_dbg(hw, "RAR index %d is out of range.\n", index);
  return IXGBE_ERR_INVALID_ARGUMENT;
 }


 hw->mac.ops.set_vmdq(hw, index, vmdq);





 rar_low = ((u32)addr[0] |
     ((u32)addr[1] << 8) |
     ((u32)addr[2] << 16) |
     ((u32)addr[3] << 24));





 rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(index));
 rar_high &= ~(0x0000FFFF | IXGBE_RAH_AV);
 rar_high |= ((u32)addr[4] | ((u32)addr[5] << 8));

 if (enable_addr != 0)
  rar_high |= IXGBE_RAH_AV;





 IXGBE_WRITE_REG(hw, IXGBE_RAL(index), rar_low);
 IXGBE_WRITE_FLUSH(hw);
 IXGBE_WRITE_REG(hw, IXGBE_RAH(index), rar_high);

 return 0;
}
