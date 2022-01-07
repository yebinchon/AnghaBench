
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int mpx_write(struct i2c_client *client, int dev, int addr, int val)
{
 u8 buffer[5];
 struct i2c_msg msg;

 buffer[0] = dev;
 buffer[1] = addr >> 8;
 buffer[2] = addr & 0xff;
 buffer[3] = val >> 8;
 buffer[4] = val & 0xff;
 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 5;
 msg.buf = buffer;
 i2c_transfer(client->adapter, &msg, 1);
 return 0;
}
