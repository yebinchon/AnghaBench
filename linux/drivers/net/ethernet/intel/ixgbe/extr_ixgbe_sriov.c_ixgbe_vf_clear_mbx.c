
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_PFMBMEM (scalar_t__) ;
 scalar_t__ IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,scalar_t__,int ) ;

__attribute__((used)) static void ixgbe_vf_clear_mbx(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 word;


 for (word = 0; word < IXGBE_VFMAILBOX_SIZE; word++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_PFMBMEM(vf), word, 0);

 IXGBE_WRITE_FLUSH(hw);
}
