
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int da9150_i2c_write_device(struct i2c_client *client, u8 addr,
       int count, const u8 *buf)
{
 struct i2c_msg xfer;
 u8 *reg_data;
 int ret;

 reg_data = kzalloc(1 + count, GFP_KERNEL);
 if (!reg_data)
  return -ENOMEM;

 reg_data[0] = addr;
 memcpy(&reg_data[1], buf, count);


 xfer.addr = client->addr;
 xfer.flags = 0;
 xfer.len = 1 + count;
 xfer.buf = reg_data;

 ret = i2c_transfer(client->adapter, &xfer, 1);
 kfree(reg_data);
 if (ret == 1)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
