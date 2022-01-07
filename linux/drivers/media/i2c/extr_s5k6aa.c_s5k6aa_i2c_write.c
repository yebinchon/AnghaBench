
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 int v4l2_dbg (int,int ,struct i2c_client*,char*,int,int) ;

__attribute__((used)) static int s5k6aa_i2c_write(struct i2c_client *client, u16 addr, u16 val)
{
 u8 buf[4] = {addr >> 8, addr & 0xFF, val >> 8, val & 0xFF};

 int ret = i2c_master_send(client, buf, 4);
 v4l2_dbg(3, debug, client, "i2c_write: 0x%04X : 0x%04x\n", addr, val);

 return ret == 4 ? 0 : ret;
}
