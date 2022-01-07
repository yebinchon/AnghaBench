
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct i2c_client {int addr; int flags; int adapter; } ;
typedef int s32 ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_READ ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int v4l_err (struct i2c_client*,char*,int ,int ) ;

__attribute__((used)) static s32 adv_smbus_read_byte_data_check(struct i2c_client *client,
       u8 command, bool check)
{
 union i2c_smbus_data data;

 if (!i2c_smbus_xfer(client->adapter, client->addr, client->flags,
       I2C_SMBUS_READ, command,
       I2C_SMBUS_BYTE_DATA, &data))
  return data.byte;
 if (check)
  v4l_err(client, "error reading %02x, %02x\n",
   client->addr, command);
 return -1;
}
