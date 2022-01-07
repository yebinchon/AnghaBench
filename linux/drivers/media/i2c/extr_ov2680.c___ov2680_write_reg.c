
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ov2680_dev {struct i2c_client* i2c_client; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int EIO ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_master_send (struct i2c_client*,int *,unsigned int) ;
 int put_unaligned_be16 (int ,int *) ;
 int put_unaligned_be32 (int,int *) ;

__attribute__((used)) static int __ov2680_write_reg(struct ov2680_dev *sensor, u16 reg,
         unsigned int len, u32 val)
{
 struct i2c_client *client = sensor->i2c_client;
 u8 buf[6];
 int ret;

 if (len > 4)
  return -EINVAL;

 put_unaligned_be16(reg, buf);
 put_unaligned_be32(val << (8 * (4 - len)), buf + 2);
 ret = i2c_master_send(client, buf, len + 2);
 if (ret != len + 2) {
  dev_err(&client->dev, "write error: reg=0x%4x: %d\n", reg, ret);
  return -EIO;
 }

 return 0;
}
