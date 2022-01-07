
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int __mt9t112_reg_read (struct i2c_client const*,int) ;
 int __mt9t112_reg_write (struct i2c_client const*,int,int ) ;

__attribute__((used)) static int __mt9t112_mcu_read(const struct i2c_client *client, u16 command)
{
 int ret;

 ret = __mt9t112_reg_write(client, 0x098E, command);
 if (ret < 0)
  return ret;

 return __mt9t112_reg_read(client, 0x0990);
}
