
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWL4030_PM_MASTER_PROTECT_KEY ;
 int TWL_MODULE_PM_MASTER ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static inline int protect_pm_master(void)
{
 int e = 0;

 e = twl_i2c_write_u8(TWL_MODULE_PM_MASTER, 0,
        TWL4030_PM_MASTER_PROTECT_KEY);
 return e;
}
