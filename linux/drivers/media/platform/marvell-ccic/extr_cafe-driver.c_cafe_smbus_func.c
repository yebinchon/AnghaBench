
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;

__attribute__((used)) static u32 cafe_smbus_func(struct i2c_adapter *adapter)
{
 return I2C_FUNC_SMBUS_READ_BYTE_DATA |
        I2C_FUNC_SMBUS_WRITE_BYTE_DATA;
}
