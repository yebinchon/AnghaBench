
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_register {int value; scalar_t__ addr; } ;
struct i2c_client {int dummy; } ;


 int ov2659_write (struct i2c_client*,scalar_t__,int ) ;

__attribute__((used)) static int ov2659_write_array(struct i2c_client *client,
         const struct sensor_register *regs)
{
 int i, ret = 0;

 for (i = 0; ret == 0 && regs[i].addr; i++)
  ret = ov2659_write(client, regs[i].addr, regs[i].value);

 return ret;
}
