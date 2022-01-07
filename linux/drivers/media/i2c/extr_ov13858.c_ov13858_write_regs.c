
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ov13858_reg {int address; int val; } ;
struct ov13858 {int sd; } ;
struct i2c_client {int dev; } ;


 int dev_err_ratelimited (int *,char*,int ,int) ;
 int ov13858_write_reg (struct ov13858*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov13858_write_regs(struct ov13858 *ov13858,
         const struct ov13858_reg *regs, u32 len)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov13858->sd);
 int ret;
 u32 i;

 for (i = 0; i < len; i++) {
  ret = ov13858_write_reg(ov13858, regs[i].address, 1,
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
