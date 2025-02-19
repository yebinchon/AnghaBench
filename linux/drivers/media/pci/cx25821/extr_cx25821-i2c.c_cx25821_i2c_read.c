
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_client {int addr; int adapter; } ;
struct cx25821_i2c {struct i2c_client i2c_client; } ;


 int I2C_M_RD ;
 int i2c_xfer (int ,struct i2c_msg*,int) ;

int cx25821_i2c_read(struct cx25821_i2c *bus, u16 reg_addr, int *value)
{
 struct i2c_client *client = &bus->i2c_client;
 int v = 0;
 u8 addr[2] = { 0, 0 };
 u8 buf[4] = { 0, 0, 0, 0 };

 struct i2c_msg msgs[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 2,
   .buf = addr,
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 4,
   .buf = buf,
  }
 };

 addr[0] = (reg_addr >> 8);
 addr[1] = (reg_addr & 0xff);
 msgs[0].addr = 0x44;
 msgs[1].addr = 0x44;

 i2c_xfer(client->adapter, msgs, 2);

 v = (buf[3] << 24) | (buf[2] << 16) | (buf[1] << 8) | buf[0];
 *value = v;

 return v;
}
