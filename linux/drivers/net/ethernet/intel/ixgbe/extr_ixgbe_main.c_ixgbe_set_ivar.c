
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef int s8 ;


 int IXGBE_IVAR (int) ;
 int IXGBE_IVAR_ALLOC_VAL ;
 int IXGBE_IVAR_MISC ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;







__attribute__((used)) static void ixgbe_set_ivar(struct ixgbe_adapter *adapter, s8 direction,
      u8 queue, u8 msix_vector)
{
 u32 ivar, index;
 struct ixgbe_hw *hw = &adapter->hw;
 switch (hw->mac.type) {
 case 133:
  msix_vector |= IXGBE_IVAR_ALLOC_VAL;
  if (direction == -1)
   direction = 0;
  index = (((direction * 64) + queue) >> 2) & 0x1F;
  ivar = IXGBE_READ_REG(hw, IXGBE_IVAR(index));
  ivar &= ~(0xFF << (8 * (queue & 0x3)));
  ivar |= (msix_vector << (8 * (queue & 0x3)));
  IXGBE_WRITE_REG(hw, IXGBE_IVAR(index), ivar);
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (direction == -1) {

   msix_vector |= IXGBE_IVAR_ALLOC_VAL;
   index = ((queue & 1) * 8);
   ivar = IXGBE_READ_REG(&adapter->hw, IXGBE_IVAR_MISC);
   ivar &= ~(0xFF << index);
   ivar |= (msix_vector << index);
   IXGBE_WRITE_REG(&adapter->hw, IXGBE_IVAR_MISC, ivar);
   break;
  } else {

   msix_vector |= IXGBE_IVAR_ALLOC_VAL;
   index = ((16 * (queue & 1)) + (8 * direction));
   ivar = IXGBE_READ_REG(hw, IXGBE_IVAR(queue >> 1));
   ivar &= ~(0xFF << index);
   ivar |= (msix_vector << index);
   IXGBE_WRITE_REG(hw, IXGBE_IVAR(queue >> 1), ivar);
   break;
  }
 default:
  break;
 }
}
