
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5670_reg {int address; int val; } ;
struct ov5670 {int sd; } ;
struct i2c_client {int dev; } ;


 int dev_err_ratelimited (int *,char*,int ,int) ;
 int ov5670_write_reg (struct ov5670*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov5670_write_regs(struct ov5670 *ov5670,
        const struct ov5670_reg *regs, unsigned int len)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov5670->sd);
 unsigned int i;
 int ret;

 for (i = 0; i < len; i++) {
  ret = ov5670_write_reg(ov5670, regs[i].address, 1, regs[i].val);
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
