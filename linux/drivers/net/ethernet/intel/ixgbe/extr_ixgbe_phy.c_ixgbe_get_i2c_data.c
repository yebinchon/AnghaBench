
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_IN (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OE_N_EN (struct ixgbe_hw*) ;
 int IXGBE_I2C_T_FALL ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static bool ixgbe_get_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl)
{
 u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);

 if (data_oe_bit) {
  *i2cctl |= data_oe_bit;
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL(hw), *i2cctl);
  IXGBE_WRITE_FLUSH(hw);
  udelay(IXGBE_I2C_T_FALL);
 }

 if (*i2cctl & IXGBE_I2C_DATA_IN(hw))
  return 1;
 return 0;
}
