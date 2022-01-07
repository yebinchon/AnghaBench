
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct regval {scalar_t__ addr; int val; } ;
struct i2c_client {int dummy; } ;


 int OV5695_REG_VALUE_08BIT ;
 scalar_t__ REG_NULL ;
 int ov5695_write_reg (struct i2c_client*,scalar_t__,int ,int ) ;

__attribute__((used)) static int ov5695_write_array(struct i2c_client *client,
         const struct regval *regs)
{
 u32 i;
 int ret = 0;

 for (i = 0; ret == 0 && regs[i].addr != REG_NULL; i++)
  ret = ov5695_write_reg(client, regs[i].addr,
           OV5695_REG_VALUE_08BIT, regs[i].val);

 return ret;
}
