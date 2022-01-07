
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; int adapter; } ;
struct et8ek8_reg {scalar_t__ type; int val; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ ET8EK8_REG_16BIT ;
 scalar_t__ ET8EK8_REG_8BIT ;
 scalar_t__ ET8EK8_REG_DELAY ;
 scalar_t__ ET8EK8_REG_TERM ;
 scalar_t__ WARN (int,char*,scalar_t__) ;
 int dev_err (int *,char*) ;
 int et8ek8_i2c_buffered_write_regs (struct i2c_client*,struct et8ek8_reg const*,int) ;
 int msleep (int ) ;

__attribute__((used)) static int et8ek8_i2c_write_regs(struct i2c_client *client,
     const struct et8ek8_reg *regs)
{
 int r, cnt = 0;
 const struct et8ek8_reg *next;

 if (!client->adapter)
  return -ENODEV;

 if (!regs)
  return -EINVAL;


 next = regs;

 do {




  while (next->type != ET8EK8_REG_TERM &&
         next->type != ET8EK8_REG_DELAY) {




   if (WARN(next->type != ET8EK8_REG_8BIT &&
     next->type != ET8EK8_REG_16BIT,
     "Invalid type = %d", next->type)) {
    return -EINVAL;
   }




   cnt++;
   next++;
  }


  r = et8ek8_i2c_buffered_write_regs(client, regs, cnt);


  if (r < 0) {
   dev_err(&client->dev, "i2c transfer error!\n");
   return r;
  }





  if (next->type == ET8EK8_REG_DELAY) {
   msleep(next->val);




   next++;
   regs = next;
   cnt = 0;
  }
 } while (next->type != ET8EK8_REG_TERM);

 return 0;
}
