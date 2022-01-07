
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int CTRL0 ;
 int IXGB_CTRL0_SDP0 ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int ) ;

void
ixgb_led_off(struct ixgb_hw *hw)
{
 u32 ctrl0_reg = IXGB_READ_REG(hw, CTRL0);


 ctrl0_reg |= IXGB_CTRL0_SDP0;
 IXGB_WRITE_REG(hw, CTRL0, ctrl0_reg);
}
