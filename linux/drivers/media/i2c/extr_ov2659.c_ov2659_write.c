
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int flags; int addr; } ;
typedef int buf ;


 int dev_dbg (int *,char*,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ov2659_write(struct i2c_client *client, u16 reg, u8 val)
{
 struct i2c_msg msg;
 u8 buf[3];
 int ret;

 buf[0] = reg >> 8;
 buf[1] = reg & 0xFF;
 buf[2] = val;

 msg.addr = client->addr;
 msg.flags = client->flags;
 msg.buf = buf;
 msg.len = sizeof(buf);

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret >= 0)
  return 0;

 dev_dbg(&client->dev,
  "ov2659 write reg(0x%x val:0x%x) failed !\n", reg, val);

 return ret;
}
