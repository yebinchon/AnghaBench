
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int R_SEQ_ADD_A2S ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_config_sleep_sequence(u8 address)
{
 int err;


 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, address, R_SEQ_ADD_A2S);

 if (err)
  pr_err("TWL4030 sleep sequence config error\n");

 return err;
}
