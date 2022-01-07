
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int __mt9t112_mcu_read (struct i2c_client const*,int) ;
 int __mt9t112_mcu_write (struct i2c_client const*,int,int) ;

__attribute__((used)) static int __mt9t112_mcu_mask_set(const struct i2c_client *client,
      u16 command, u16 mask, u16 set)
{
 int val = __mt9t112_mcu_read(client, command);

 if (val < 0)
  return val;

 val &= ~mask;
 val |= set & mask;

 return __mt9t112_mcu_write(client, command, val);
}
