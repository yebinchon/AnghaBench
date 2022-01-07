
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int EIO ;
 int cpu_to_be32 (int) ;
 int i2c_master_send (struct i2c_client*,int*,int) ;

__attribute__((used)) static int ov5695_write_reg(struct i2c_client *client, u16 reg,
       u32 len, u32 val)
{
 u32 buf_i, val_i;
 u8 buf[6];
 u8 *val_p;
 __be32 val_be;

 if (len > 4)
  return -EINVAL;

 buf[0] = reg >> 8;
 buf[1] = reg & 0xff;

 val_be = cpu_to_be32(val);
 val_p = (u8 *)&val_be;
 buf_i = 2;
 val_i = 4 - len;

 while (val_i < 4)
  buf[buf_i++] = val_p[val_i++];

 if (i2c_master_send(client, buf, len + 2) != len + 2)
  return -EIO;

 return 0;
}
