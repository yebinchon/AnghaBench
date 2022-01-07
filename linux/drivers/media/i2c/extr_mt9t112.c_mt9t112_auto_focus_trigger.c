
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int VAR8 (int,int) ;
 int mt9t112_mcu_write (int,struct i2c_client const*,int ,int) ;

__attribute__((used)) static int mt9t112_auto_focus_trigger(const struct i2c_client *client)
{
 int ret;

 mt9t112_mcu_write(ret, client, VAR8(12, 25), 0x01);

 return ret;
}
