
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ECHECKER (int,int ) ;
 int VAR (int,int) ;
 int VAR8 (int,int) ;
 int mt9t112_auto_focus_setting (struct i2c_client const*) ;
 int mt9t112_init_pll (struct i2c_client const*) ;
 int mt9t112_init_setting (struct i2c_client const*) ;
 int mt9t112_mcu_write (int,struct i2c_client const*,int ,int) ;
 int mt9t112_reg_mask_set (int,struct i2c_client const*,int,int,int ) ;
 int mt9t112_reg_write (int,struct i2c_client const*,int,int) ;
 int mt9t112_reset (struct i2c_client const*) ;

__attribute__((used)) static int mt9t112_init_camera(const struct i2c_client *client)
{
 int ret;

 ECHECKER(ret, mt9t112_reset(client));
 ECHECKER(ret, mt9t112_init_pll(client));
 ECHECKER(ret, mt9t112_init_setting(client));
 ECHECKER(ret, mt9t112_auto_focus_setting(client));

 mt9t112_reg_mask_set(ret, client, 0x0018, 0x0004, 0);


 mt9t112_reg_write(ret, client, 0x3084, 0x2409);
 mt9t112_reg_write(ret, client, 0x3092, 0x0A49);
 mt9t112_reg_write(ret, client, 0x3094, 0x4949);
 mt9t112_reg_write(ret, client, 0x3096, 0x4950);






 mt9t112_mcu_write(ret, client, VAR(26, 160), 0x0A2E);
 mt9t112_mcu_write(ret, client, VAR(27, 160), 0x0A2E);





 mt9t112_mcu_write(ret, client, VAR(27, 144), 0x0CB4);





 mt9t112_mcu_write(ret, client, VAR8(27, 142), 0x01);


 mt9t112_reg_write(ret, client, 0x316C, 0x350F);


 mt9t112_reg_write(ret, client, 0x1E, 0x777);

 return ret;
}
