
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ov8856_reg_list {unsigned int num_of_regs; TYPE_1__* regs; } ;
struct ov8856 {int sd; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int address; int val; } ;


 int dev_err_ratelimited (int *,char*,int ,int) ;
 int ov8856_write_reg (struct ov8856*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov8856_write_reg_list(struct ov8856 *ov8856,
     const struct ov8856_reg_list *r_list)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
 unsigned int i;
 int ret;

 for (i = 0; i < r_list->num_of_regs; i++) {
  ret = ov8856_write_reg(ov8856, r_list->regs[i].address, 1,
           r_list->regs[i].val);
  if (ret) {
   dev_err_ratelimited(&client->dev,
        "failed to write reg 0x%4.4x. error = %d",
        r_list->regs[i].address, ret);
   return ret;
  }
 }

 return 0;
}
