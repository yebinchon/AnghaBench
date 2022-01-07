
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_power_data {scalar_t__ ac_charger_quirk; } ;


 int PWR_LVL_WAKEUP ;
 int R_CFG_P1_TRANSITION ;
 int R_P1_SW_EVENTS ;
 int R_P2_SW_EVENTS ;
 int R_SEQ_ADD_S2A12 ;
 int STARTON_CHG ;
 int TWL_MODULE_PM_MASTER ;
 scalar_t__ machine_is_omap_3430sdp () ;
 scalar_t__ machine_is_omap_ldp () ;
 int pr_err (char*) ;
 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int
twl4030_config_wakeup12_sequence(const struct twl4030_power_data *pdata,
     u8 address)
{
 int err = 0;
 u8 data;


 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, address, R_SEQ_ADD_S2A12);
 if (err)
  goto out;


 err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &data, R_P1_SW_EVENTS);
 if (err)
  goto out;

 data |= PWR_LVL_WAKEUP;
 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, data, R_P1_SW_EVENTS);
 if (err)
  goto out;

 err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &data, R_P2_SW_EVENTS);
 if (err)
  goto out;

 data |= PWR_LVL_WAKEUP;
 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, data, R_P2_SW_EVENTS);
 if (err)
  goto out;

 if (pdata->ac_charger_quirk || machine_is_omap_3430sdp() ||
     machine_is_omap_ldp()) {

  err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &data,
          R_CFG_P1_TRANSITION);
  if (err)
   goto out;
  data &= ~STARTON_CHG;
  err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, data,
           R_CFG_P1_TRANSITION);
  if (err)
   goto out;
 }

out:
 if (err)
  pr_err("TWL4030 wakeup sequence for P1 and P2" "config error\n");

 return err;
}
