
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct imx319_reg {int address; int val; } ;
struct imx319 {int sd; } ;
struct i2c_client {int dev; } ;


 int dev_err_ratelimited (int *,char*,int ,int) ;
 int imx319_write_reg (struct imx319*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int imx319_write_regs(struct imx319 *imx319,
        const struct imx319_reg *regs, u32 len)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx319->sd);
 int ret;
 u32 i;

 for (i = 0; i < len; i++) {
  ret = imx319_write_reg(imx319, regs[i].address, 1, regs[i].val);
  if (ret) {
   dev_err_ratelimited(&client->dev,
         "write reg 0x%4.4x return err %d",
         regs[i].address, ret);
   return ret;
  }
 }

 return 0;
}
