
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int flags; int* buf; int len; int addr; } ;
struct i2c_client {int flags; int dev; int adapter; int addr; } ;
typedef int buf ;


 int I2C_M_RD ;
 int dev_dbg (int *,char*,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ov2659_read(struct i2c_client *client, u16 reg, u8 *val)
{
 struct i2c_msg msg[2];
 u8 buf[2];
 int ret;

 buf[0] = reg >> 8;
 buf[1] = reg & 0xFF;

 msg[0].addr = client->addr;
 msg[0].flags = client->flags;
 msg[0].buf = buf;
 msg[0].len = sizeof(buf);

 msg[1].addr = client->addr;
 msg[1].flags = client->flags | I2C_M_RD;
 msg[1].buf = buf;
 msg[1].len = 1;

 ret = i2c_transfer(client->adapter, msg, 2);
 if (ret >= 0) {
  *val = buf[0];
  return 0;
 }

 dev_dbg(&client->dev,
  "ov2659 read reg(0x%x val:0x%x) failed !\n", reg, *val);

 return ret;
}
