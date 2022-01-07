
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int R_MEMORY_ADDRESS ;
 int R_MEMORY_DATA ;
 int TWL_MODULE_PM_MASTER ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_write_script_byte(u8 address, u8 byte)
{
 int err;

 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, address, R_MEMORY_ADDRESS);
 if (err)
  goto out;
 err = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, byte, R_MEMORY_DATA);
out:
 return err;
}
