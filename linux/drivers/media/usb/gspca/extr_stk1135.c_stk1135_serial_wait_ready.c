
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 scalar_t__ STK1135_REG_SICTL ;
 int pr_err (char*,int) ;
 int reg_r (struct gspca_dev*,scalar_t__) ;

__attribute__((used)) static int stk1135_serial_wait_ready(struct gspca_dev *gspca_dev)
{
 int i = 0;
 u8 val;

 do {
  val = reg_r(gspca_dev, STK1135_REG_SICTL + 1);
  if (i++ > 500) {
   pr_err("serial bus timeout: status=0x%02x\n", val);
   return -1;
  }

 } while ((val & 0x10) || !(val & 0x05));

 return 0;
}
