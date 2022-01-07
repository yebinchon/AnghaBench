
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int VAR (int,int) ;
 int VAR8 (int,int) ;
 int mt9t112_mcu_mask_set (int,struct i2c_client const*,int ,int,int) ;
 int mt9t112_mcu_write (int,struct i2c_client const*,int ,int) ;

__attribute__((used)) static int mt9t112_init_setting(const struct i2c_client *client)
{
 int ret;


 mt9t112_mcu_mask_set(ret, client, VAR(26, 160), 0x0040, 0x0000);


 mt9t112_mcu_write(ret, client, VAR(18, 12), 0x0024);


 mt9t112_mcu_write(ret, client, VAR(18, 15), 0x00CC);


 mt9t112_mcu_write(ret, client, VAR(18, 17), 0x01f1);


 mt9t112_mcu_write(ret, client, VAR(18, 19), 0x00fF);


 mt9t112_mcu_write(ret, client, VAR(18, 29), 0x032D);


 mt9t112_mcu_write(ret, client, VAR(18, 31), 0x073a);


 mt9t112_mcu_write(ret, client, VAR(18, 37), 0x07d0);


 mt9t112_mcu_mask_set(ret, client, VAR(27, 160), 0x0040, 0x0000);


 mt9t112_mcu_write(ret, client, VAR(18, 74), 0x004);


 mt9t112_mcu_write(ret, client, VAR(18, 76), 0x004);


 mt9t112_mcu_write(ret, client, VAR(18, 78), 0x60B);


 mt9t112_mcu_write(ret, client, VAR(18, 80), 0x80B);


 mt9t112_mcu_write(ret, client, VAR(18, 87), 0x008C);


 mt9t112_mcu_write(ret, client, VAR(18, 89), 0x01F1);


 mt9t112_mcu_write(ret, client, VAR(18, 91), 0x00FF);


 mt9t112_mcu_write(ret, client, VAR(18, 101), 0x0668);


 mt9t112_mcu_write(ret, client, VAR(18, 103), 0x0AF0);


 mt9t112_mcu_write(ret, client, VAR(18, 109), 0x0AF0);
 mt9t112_mcu_write(ret, client, VAR8(8, 5), 0x01);


 mt9t112_mcu_write(ret, client, VAR(27, 17), 0x0003);


 mt9t112_mcu_write(ret, client, VAR(26, 17), 0x0003);






 mt9t112_mcu_write(ret, client, VAR8(18, 165), 0x25);


 mt9t112_mcu_write(ret, client, VAR8(18, 166), 0x28);


 mt9t112_mcu_write(ret, client, VAR8(18, 167), 0x2C);


 mt9t112_mcu_write(ret, client, VAR8(18, 168), 0x2F);


 mt9t112_mcu_write(ret, client, VAR8(18, 68), 0xBA);



 mt9t112_mcu_write(ret, client, VAR8(18, 303), 0x00);


 mt9t112_mcu_write(ret, client, VAR8(18, 69), 0x9B);



 mt9t112_mcu_write(ret, client, VAR8(18, 301), 0x00);


 mt9t112_mcu_write(ret, client, VAR8(18, 140), 0x82);



 mt9t112_mcu_write(ret, client, VAR8(18, 304), 0x00);


 mt9t112_mcu_write(ret, client, VAR8(18, 141), 0x6D);



 mt9t112_mcu_write(ret, client, VAR8(18, 302), 0x00);


 mt9t112_mcu_write(ret, client, VAR8(8, 2), 0x10);


 mt9t112_mcu_write(ret, client, VAR8(8, 9), 0x02);


 mt9t112_mcu_write(ret, client, VAR8(8, 10), 0x03);


 mt9t112_mcu_write(ret, client, VAR8(8, 12), 0x0A);


 mt9t112_mcu_write(ret, client, VAR(18, 70), 0x0014);


 mt9t112_mcu_write(ret, client, VAR(18, 142), 0x0014);





 mt9t112_mcu_write(ret, client, VAR8(18, 0x0044), 133);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x0045), 110);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x008c), 130);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x008d), 108);

 mt9t112_mcu_write(ret, client, VAR8(18, 0x00A5), 27);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x00a6), 30);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x00a7), 32);
 mt9t112_mcu_write(ret, client, VAR8(18, 0x00a8), 35);

 return ret;
}
