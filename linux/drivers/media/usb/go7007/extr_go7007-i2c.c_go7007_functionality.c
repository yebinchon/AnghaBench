
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_SMBUS_BYTE_DATA ;

__attribute__((used)) static u32 go7007_functionality(struct i2c_adapter *adapter)
{
 return I2C_FUNC_SMBUS_BYTE_DATA;
}
