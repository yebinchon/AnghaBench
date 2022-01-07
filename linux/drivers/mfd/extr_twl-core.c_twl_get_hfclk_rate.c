
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;



 int R_CFG_BOOT ;
 int TWL_MODULE_PM_MASTER ;
 int pr_err (char*) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

int twl_get_hfclk_rate(void)
{
 u8 ctrl;
 int rate;

 twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &ctrl, R_CFG_BOOT);

 switch (ctrl & 0x3) {
 case 130:
  rate = 19200000;
  break;
 case 129:
  rate = 26000000;
  break;
 case 128:
  rate = 38400000;
  break;
 default:
  pr_err("TWL4030: HFCLK is not configured\n");
  rate = -EINVAL;
  break;
 }

 return rate;
}
