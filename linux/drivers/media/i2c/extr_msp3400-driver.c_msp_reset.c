
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;




 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 int dev_dbg_lvl (int *,int,int ,char*) ;
 int dev_err (int *,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msp_debug ;

int msp_reset(struct i2c_client *client)
{

 static u8 reset_off[3] = { 129, 0x80, 0x00 };
 static u8 reset_on[3] = { 129, 0x00, 0x00 };
 static u8 write[3] = { 128 + 1, 0x00, 0x1e };
 u8 read[2];
 struct i2c_msg reset[2] = {
  {
   .addr = client->addr,
   .flags = I2C_M_IGNORE_NAK,
   .len = 3,
   .buf = reset_off
  },
  {
   .addr = client->addr,
   .flags = I2C_M_IGNORE_NAK,
   .len = 3,
   .buf = reset_on
  },
 };
 struct i2c_msg test[2] = {
  {
   .addr = client->addr,
   .len = 3,
   .buf = write
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 2,
   .buf = read
  },
 };

 dev_dbg_lvl(&client->dev, 3, msp_debug, "msp_reset\n");
 if (i2c_transfer(client->adapter, &reset[0], 1) != 1 ||
     i2c_transfer(client->adapter, &reset[1], 1) != 1 ||
     i2c_transfer(client->adapter, test, 2) != 2) {
  dev_err(&client->dev, "chip reset failed\n");
  return -1;
 }
 return 0;
}
