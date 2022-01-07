
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m001_reg {int data; int reg; } ;
struct i2c_client {int dummy; } ;


 int reg_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int multi_reg_write(struct i2c_client *client,
      const struct mt9m001_reg *regs, int num)
{
 int i;

 for (i = 0; i < num; i++) {
  int ret = reg_write(client, regs[i].reg, regs[i].data);

  if (ret)
   return ret;
 }

 return 0;
}
