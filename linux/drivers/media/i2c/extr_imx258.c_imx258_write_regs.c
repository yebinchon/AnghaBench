
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct imx258_reg {int address; int val; } ;
struct imx258 {int sd; } ;
struct i2c_client {int dev; } ;


 int dev_err_ratelimited (int *,char*,int ,int) ;
 int imx258_write_reg (struct imx258*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int imx258_write_regs(struct imx258 *imx258,
        const struct imx258_reg *regs, u32 len)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx258->sd);
 unsigned int i;
 int ret;

 for (i = 0; i < len; i++) {
  ret = imx258_write_reg(imx258, regs[i].address, 1,
     regs[i].val);
  if (ret) {
   dev_err_ratelimited(
    &client->dev,
    "Failed to write reg 0x%4.4x. error = %d\n",
    regs[i].address, ret);

   return ret;
  }
 }

 return 0;
}
