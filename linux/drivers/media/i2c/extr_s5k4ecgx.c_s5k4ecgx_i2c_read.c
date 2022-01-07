
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int __be16 ;


 scalar_t__ I2C_M_RD ;
 int be16_to_cpu (int ) ;
 int debug ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int v4l2_dbg (int,int ,struct i2c_client*,char*,int,int) ;

__attribute__((used)) static int s5k4ecgx_i2c_read(struct i2c_client *client, u16 addr, u16 *val)
{
 u8 wbuf[2] = { addr >> 8, addr & 0xff };
 struct i2c_msg msg[2];
 u8 rbuf[2];
 int ret;

 msg[0].addr = client->addr;
 msg[0].flags = 0;
 msg[0].len = 2;
 msg[0].buf = wbuf;

 msg[1].addr = client->addr;
 msg[1].flags = I2C_M_RD;
 msg[1].len = 2;
 msg[1].buf = rbuf;

 ret = i2c_transfer(client->adapter, msg, 2);
 *val = be16_to_cpu(*((__be16 *)rbuf));

 v4l2_dbg(4, debug, client, "i2c_read: 0x%04X : 0x%04x\n", addr, *val);

 return ret == 2 ? 0 : ret;
}
