
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; struct i2c_msg* buf; scalar_t__ flags; int addr; } ;
typedef struct i2c_msg u8 ;
typedef int u32 ;
typedef int u16 ;
struct imx355 {int sd; } ;
struct i2c_client {int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int get_unaligned_be32 (struct i2c_msg*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int put_unaligned_be16 (int ,struct i2c_msg*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int imx355_read_reg(struct imx355 *imx355, u16 reg, u32 len, u32 *val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx355->sd);
 struct i2c_msg msgs[2];
 u8 addr_buf[2];
 u8 data_buf[4] = { 0 };
 int ret;

 if (len > 4)
  return -EINVAL;

 put_unaligned_be16(reg, addr_buf);

 msgs[0].addr = client->addr;
 msgs[0].flags = 0;
 msgs[0].len = ARRAY_SIZE(addr_buf);
 msgs[0].buf = addr_buf;


 msgs[1].addr = client->addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = len;
 msgs[1].buf = &data_buf[4 - len];

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret != ARRAY_SIZE(msgs))
  return -EIO;

 *val = get_unaligned_be32(data_buf);

 return 0;
}
