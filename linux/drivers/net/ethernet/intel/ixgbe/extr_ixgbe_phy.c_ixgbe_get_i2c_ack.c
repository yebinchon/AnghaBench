
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_I2C ;
 int IXGBE_I2CCTL (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OE_N_EN (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OUT (struct ixgbe_hw*) ;
 int IXGBE_I2C_T_HIGH ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_get_i2c_data (struct ixgbe_hw*,int*) ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int*) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
{
 u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN(hw);
 s32 status = 0;
 u32 i = 0;
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
 u32 timeout = 10;
 bool ack = 1;

 if (data_oe_bit) {
  i2cctl |= IXGBE_I2C_DATA_OUT(hw);
  i2cctl |= data_oe_bit;
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL(hw), i2cctl);
  IXGBE_WRITE_FLUSH(hw);
 }
 ixgbe_raise_i2c_clk(hw, &i2cctl);


 udelay(IXGBE_I2C_T_HIGH);



 for (i = 0; i < timeout; i++) {
  i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
  ack = ixgbe_get_i2c_data(hw, &i2cctl);

  udelay(1);
  if (ack == 0)
   break;
 }

 if (ack == 1) {
  hw_dbg(hw, "I2C ack was not received.\n");
  status = IXGBE_ERR_I2C;
 }

 ixgbe_lower_i2c_clk(hw, &i2cctl);


 udelay(IXGBE_I2C_T_LOW);

 return status;
}
