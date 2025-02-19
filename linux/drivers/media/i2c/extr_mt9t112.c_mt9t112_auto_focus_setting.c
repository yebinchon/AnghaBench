
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int VAR (int,int) ;
 int VAR8 (int,int) ;
 int mt9t112_mcu_write (int,struct i2c_client const*,int ,int) ;
 int mt9t112_reg_write (int,struct i2c_client const*,int,int) ;

__attribute__((used)) static int mt9t112_auto_focus_setting(const struct i2c_client *client)
{
 int ret;

 mt9t112_mcu_write(ret, client, VAR(12, 13), 0x000F);
 mt9t112_mcu_write(ret, client, VAR(12, 23), 0x0F0F);
 mt9t112_mcu_write(ret, client, VAR8(1, 0), 0x06);

 mt9t112_reg_write(ret, client, 0x0614, 0x0000);

 mt9t112_mcu_write(ret, client, VAR8(1, 0), 0x05);
 mt9t112_mcu_write(ret, client, VAR8(12, 2), 0x02);
 mt9t112_mcu_write(ret, client, VAR(12, 3), 0x0002);
 mt9t112_mcu_write(ret, client, VAR(17, 3), 0x8001);
 mt9t112_mcu_write(ret, client, VAR(17, 11), 0x0025);
 mt9t112_mcu_write(ret, client, VAR(17, 13), 0x0193);
 mt9t112_mcu_write(ret, client, VAR8(17, 33), 0x18);
 mt9t112_mcu_write(ret, client, VAR8(1, 0), 0x05);

 return ret;
}
