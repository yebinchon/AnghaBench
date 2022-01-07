
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smiapp_sensor {TYPE_1__* src; } ;
struct smiapp_reg_8 {int val; int reg; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int sd; } ;


 int dev_err (int *,char*,int,int ,int ) ;
 int smiapp_write_8 (struct smiapp_sensor*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_write_8s(struct smiapp_sensor *sensor,
      const struct smiapp_reg_8 *regs, int len)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;

 for (; len > 0; len--, regs++) {
  rval = smiapp_write_8(sensor, regs->reg, regs->val);
  if (rval < 0) {
   dev_err(&client->dev,
    "error %d writing reg 0x%4.4x, val 0x%2.2x",
    rval, regs->reg, regs->val);
   return rval;
  }
 }

 return 0;
}
