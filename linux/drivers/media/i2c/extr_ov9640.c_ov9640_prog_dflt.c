
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_3__ {int val; int reg; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int msleep (int) ;
 int ov9640_reg_write (struct i2c_client*,int ,int ) ;
 TYPE_1__* ov9640_regs_dflt ;

__attribute__((used)) static int ov9640_prog_dflt(struct i2c_client *client)
{
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(ov9640_regs_dflt); i++) {
  ret = ov9640_reg_write(client, ov9640_regs_dflt[i].reg,
           ov9640_regs_dflt[i].val);
  if (ret)
   return ret;
 }


 msleep(150);

 return 0;
}
