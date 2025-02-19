
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int regs ;


 int TWL4030_PM_MASTER_CFG_P1_TRANSITION ;
 int TWL4030_PM_MASTER_CFG_P2_TRANSITION ;
 int TWL4030_PM_MASTER_CFG_P3_TRANSITION ;
 int TWL4030_PM_MASTER_KEY_CFG1 ;
 int TWL4030_PM_MASTER_KEY_CFG2 ;
 int TWL4030_PM_MASTER_PROTECT_KEY ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*,int) ;
 int twl_i2c_read_u8 (int ,int*,int) ;
 int twl_i2c_write_u8 (int ,int,int) ;

__attribute__((used)) static int twl4030_starton_mask_and_set(u8 bitmask, u8 bitvalues)
{
 u8 regs[3] = { TWL4030_PM_MASTER_CFG_P1_TRANSITION,
         TWL4030_PM_MASTER_CFG_P2_TRANSITION,
         TWL4030_PM_MASTER_CFG_P3_TRANSITION, };
 u8 val;
 int i, err;

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG1,
          TWL4030_PM_MASTER_PROTECT_KEY);
 if (err)
  goto relock;
 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER,
          TWL4030_PM_MASTER_KEY_CFG2,
          TWL4030_PM_MASTER_PROTECT_KEY);
 if (err)
  goto relock;

 for (i = 0; i < sizeof(regs); i++) {
  err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER,
          &val, regs[i]);
  if (err)
   break;
  val = (~bitmask & val) | (bitmask & bitvalues);
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER,
           val, regs[i]);
  if (err)
   break;
 }

 if (err)
  pr_err("TWL4030 Register access failed: %i\n", err);

relock:
 return twl_i2c_write_u8(TWL_MODULE_PM_MASTER, 0,
    TWL4030_PM_MASTER_PROTECT_KEY);
}
