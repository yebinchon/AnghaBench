
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PWR_LVL_WAKEUP ;
 int R_P3_SW_EVENTS ;
 int R_SEQ_ADD_S2A3 ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*) ;
 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_config_wakeup3_sequence(u8 address)
{
 int err;
 u8 data;


 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, address, R_SEQ_ADD_S2A3);
 if (err)
  goto out;


 err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &data, R_P3_SW_EVENTS);
 if (err)
  goto out;
 data |= PWR_LVL_WAKEUP;
 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, data, R_P3_SW_EVENTS);
out:
 if (err)
  pr_err("TWL4030 wakeup sequence for P3 config error\n");
 return err;
}
