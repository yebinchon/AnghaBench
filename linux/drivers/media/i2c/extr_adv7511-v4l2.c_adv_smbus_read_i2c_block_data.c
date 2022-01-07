
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {unsigned int* block; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;


 unsigned int I2C_SMBUS_BLOCK_MAX ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 int I2C_SMBUS_READ ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int memcpy (int *,unsigned int*,unsigned int) ;

__attribute__((used)) static int adv_smbus_read_i2c_block_data(struct i2c_client *client,
      u8 command, unsigned length, u8 *values)
{
 union i2c_smbus_data data;
 int ret;

 if (length > I2C_SMBUS_BLOCK_MAX)
  length = I2C_SMBUS_BLOCK_MAX;
 data.block[0] = length;

 ret = i2c_smbus_xfer(client->adapter, client->addr, client->flags,
        I2C_SMBUS_READ, command,
        I2C_SMBUS_I2C_BLOCK_DATA, &data);
 memcpy(values, data.block + 1, length);
 return ret;
}
