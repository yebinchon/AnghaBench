
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int END_OF_SCRIPT ;
 int R_SEQ_ADD_A2S ;
 int R_SEQ_ADD_S2A12 ;
 int R_SEQ_ADD_S2A3 ;
 int R_SEQ_ADD_WARM ;
 int TWL4030_PM_MASTER_KEY_CFG1 ;
 int TWL4030_PM_MASTER_KEY_CFG2 ;
 int TWL4030_PM_MASTER_PROTECT_KEY ;
 int TWL4030_SLEEP_SCRIPT ;
 int TWL4030_WAKEUP12_SCRIPT ;
 int TWL4030_WAKEUP3_SCRIPT ;
 int TWL4030_WRST_SCRIPT ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

int twl4030_remove_script(u8 flags)
{
 int err = 0;

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG1,
          TWL4030_PM_MASTER_PROTECT_KEY);
 if (err) {
  pr_err("twl4030: unable to unlock PROTECT_KEY\n");
  return err;
 }

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG2,
          TWL4030_PM_MASTER_PROTECT_KEY);
 if (err) {
  pr_err("twl4030: unable to unlock PROTECT_KEY\n");
  return err;
 }

 if (flags & TWL4030_WRST_SCRIPT) {
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, END_OF_SCRIPT,
           R_SEQ_ADD_WARM);
  if (err)
   return err;
 }
 if (flags & TWL4030_WAKEUP12_SCRIPT) {
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, END_OF_SCRIPT,
           R_SEQ_ADD_S2A12);
  if (err)
   return err;
 }
 if (flags & TWL4030_WAKEUP3_SCRIPT) {
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, END_OF_SCRIPT,
           R_SEQ_ADD_S2A3);
  if (err)
   return err;
 }
 if (flags & TWL4030_SLEEP_SCRIPT) {
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, END_OF_SCRIPT,
           R_SEQ_ADD_A2S);
  if (err)
   return err;
 }

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, 0,
          TWL4030_PM_MASTER_PROTECT_KEY);
 if (err)
  pr_err("TWL4030 Unable to relock registers\n");

 return err;
}
