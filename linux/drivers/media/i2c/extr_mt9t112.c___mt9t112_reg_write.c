
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int *,int *,int) ;
 int swab16 (int ) ;

__attribute__((used)) static int __mt9t112_reg_write(const struct i2c_client *client,
          u16 command, u16 data)
{
 struct i2c_msg msg;
 u8 buf[4];
 int ret;

 command = swab16(command);
 data = swab16(data);

 memcpy(buf + 0, &command, 2);
 memcpy(buf + 2, &data, 2);

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 4;
 msg.buf = buf;





 ret = i2c_transfer(client->adapter, &msg, 1);

 return ret >= 0 ? 0 : ret;
}
