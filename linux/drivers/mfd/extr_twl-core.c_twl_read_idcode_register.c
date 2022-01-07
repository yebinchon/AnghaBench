
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int twl_idcode; } ;


 int REG_IDCODE_7_0 ;
 int REG_UNLOCK_TEST_REG ;
 int TWL4030_MODULE_INTBR ;
 int TWL_EEPROM_R_UNLOCK ;
 int pr_err (char*,int) ;
 int twl_i2c_read (int ,int *,int ,int) ;
 int twl_i2c_write_u8 (int ,int,int ) ;
 TYPE_1__* twl_priv ;

__attribute__((used)) static int twl_read_idcode_register(void)
{
 int err;

 err = twl_i2c_write_u8(TWL4030_MODULE_INTBR, TWL_EEPROM_R_UNLOCK,
      REG_UNLOCK_TEST_REG);
 if (err) {
  pr_err("TWL4030 Unable to unlock IDCODE registers -%d\n", err);
  goto fail;
 }

 err = twl_i2c_read(TWL4030_MODULE_INTBR, (u8 *)(&twl_priv->twl_idcode),
      REG_IDCODE_7_0, 4);
 if (err) {
  pr_err("TWL4030: unable to read IDCODE -%d\n", err);
  goto fail;
 }

 err = twl_i2c_write_u8(TWL4030_MODULE_INTBR, 0x0, REG_UNLOCK_TEST_REG);
 if (err)
  pr_err("TWL4030 Unable to relock IDCODE registers -%d\n", err);
fail:
 return err;
}
