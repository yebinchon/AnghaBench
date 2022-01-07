
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL_RLPML_EN ;
 int IXGBE_VFRXDCTL (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbevf_hv_set_rlpml_vf(struct ixgbe_hw *hw, u16 max_size)
{
 u32 reg;




 reg = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(0));

 reg |= ((max_size + 4) | IXGBE_RXDCTL_RLPML_EN);
 IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(0), reg);

 return 0;
}
