
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
typedef int s32 ;


 int E1000_I2CPARAMS ;
 int E1000_I2C_DATA_IN ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_get_i2c_data(void *data)
{
 struct igb_adapter *adapter = (struct igb_adapter *)data;
 struct e1000_hw *hw = &adapter->hw;
 s32 i2cctl = rd32(E1000_I2CPARAMS);

 return !!(i2cctl & E1000_I2C_DATA_IN);
}
