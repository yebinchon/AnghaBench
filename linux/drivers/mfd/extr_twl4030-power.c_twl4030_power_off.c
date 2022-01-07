
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWR_DEVOFF ;
 int STARTON_CHG ;
 int STARTON_VBUS ;
 int TWL4030_PM_MASTER_P1_SW_EVENTS ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*) ;
 int twl4030_starton_mask_and_set (int,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

void twl4030_power_off(void)
{
 int err;


 err = twl4030_starton_mask_and_set(STARTON_VBUS | STARTON_CHG, 0);
 if (err)
  pr_err("TWL4030 Unable to configure start-up\n");

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, PWR_DEVOFF,
          TWL4030_PM_MASTER_P1_SW_EVENTS);
 if (err)
  pr_err("TWL4030 Unable to power off\n");
}
