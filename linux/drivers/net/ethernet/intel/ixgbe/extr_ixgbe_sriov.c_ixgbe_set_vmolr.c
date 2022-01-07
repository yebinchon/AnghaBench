
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VMOLR (int ) ;
 int IXGBE_VMOLR_AUPE ;
 int IXGBE_VMOLR_BAM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_set_vmolr(struct ixgbe_hw *hw, u32 vf, bool aupe)
{
 u32 vmolr = IXGBE_READ_REG(hw, IXGBE_VMOLR(vf));
 vmolr |= IXGBE_VMOLR_BAM;
 if (aupe)
  vmolr |= IXGBE_VMOLR_AUPE;
 else
  vmolr &= ~IXGBE_VMOLR_AUPE;
 IXGBE_WRITE_REG(hw, IXGBE_VMOLR(vf), vmolr);
}
