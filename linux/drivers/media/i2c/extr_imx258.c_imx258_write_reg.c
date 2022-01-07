
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct imx258 {int sd; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 int put_unaligned_be16 (int ,int *) ;
 int put_unaligned_be32 (int,int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int imx258_write_reg(struct imx258 *imx258, u16 reg, u32 len, u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx258->sd);
 u8 buf[6];

 if (len > 4)
  return -EINVAL;

 put_unaligned_be16(reg, buf);
 put_unaligned_be32(val << (8 * (4 - len)), buf + 2);
 if (i2c_master_send(client, buf, len + 2) != len + 2)
  return -EIO;

 return 0;
}
