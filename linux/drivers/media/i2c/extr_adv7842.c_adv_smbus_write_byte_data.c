
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct i2c_client {int addr; int flags; int adapter; } ;
typedef int s32 ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int v4l_err (struct i2c_client*,char*,int ,int ,int ) ;

__attribute__((used)) static s32 adv_smbus_write_byte_data(struct i2c_client *client,
         u8 command, u8 value)
{
 union i2c_smbus_data data;
 int err;
 int i;

 data.byte = value;
 for (i = 0; i < 3; i++) {
  err = i2c_smbus_xfer(client->adapter, client->addr,
         client->flags,
         I2C_SMBUS_WRITE, command,
         I2C_SMBUS_BYTE_DATA, &data);
  if (!err)
   break;
 }
 if (err < 0)
  v4l_err(client, "error writing %02x, %02x, %02x\n",
   client->addr, command, value);
 return err;
}
