
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef scalar_t__ __be32 ;
typedef int __be16 ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int be32_to_cpu (scalar_t__) ;
 int cpu_to_be16 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ov2685_read_reg(struct i2c_client *client, u16 reg,
      u32 len, u32 *val)
{
 struct i2c_msg msgs[2];
 u8 *data_be_p;
 __be32 data_be = 0;
 __be16 reg_addr_be = cpu_to_be16(reg);
 int ret;

 if (len > 4)
  return -EINVAL;

 data_be_p = (u8 *)&data_be;

 msgs[0].addr = client->addr;
 msgs[0].flags = 0;
 msgs[0].len = 2;
 msgs[0].buf = (u8 *)&reg_addr_be;


 msgs[1].addr = client->addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = len;
 msgs[1].buf = &data_be_p[4 - len];

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret != ARRAY_SIZE(msgs))
  return -EIO;

 *val = be32_to_cpu(data_be);

 return 0;
}
