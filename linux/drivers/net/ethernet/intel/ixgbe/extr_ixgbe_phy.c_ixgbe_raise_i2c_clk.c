
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL (struct ixgbe_hw*) ;
 int IXGBE_I2C_CLK_IN (struct ixgbe_hw*) ;
 int IXGBE_I2C_CLK_OE_N_EN (struct ixgbe_hw*) ;
 int IXGBE_I2C_CLK_OUT (struct ixgbe_hw*) ;
 int IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT ;
 int IXGBE_I2C_T_RISE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void ixgbe_raise_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl)
{
 u32 clk_oe_bit = IXGBE_I2C_CLK_OE_N_EN(hw);
 u32 i = 0;
 u32 timeout = IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT;
 u32 i2cctl_r = 0;

 if (clk_oe_bit) {
  *i2cctl |= clk_oe_bit;
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL(hw), *i2cctl);
 }

 for (i = 0; i < timeout; i++) {
  *i2cctl |= IXGBE_I2C_CLK_OUT(hw);
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL(hw), *i2cctl);
  IXGBE_WRITE_FLUSH(hw);

  udelay(IXGBE_I2C_T_RISE);

  i2cctl_r = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
  if (i2cctl_r & IXGBE_I2C_CLK_IN(hw))
   break;
 }
}
