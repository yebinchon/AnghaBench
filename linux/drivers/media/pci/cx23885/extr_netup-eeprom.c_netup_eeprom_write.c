
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int EEPROM_I2C_ADDR ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int mdelay (int) ;
 int pr_err (char*,int) ;

int netup_eeprom_write(struct i2c_adapter *i2c_adap, u8 addr, u8 data)
{
 int ret;
 unsigned char bufw[2];


 struct i2c_msg msg[] = {
  {
   .addr = EEPROM_I2C_ADDR,
   .flags = 0,
   .buf = &bufw[0],
   .len = 2
  }
 };

 bufw[0] = addr;
 bufw[1] = data;

 ret = i2c_transfer(i2c_adap, msg, 1);

 if (ret != 1) {
  pr_err("eeprom i2c write error, status=%d\n", ret);
  return -1;
 }

 mdelay(10);
 return 0;
}
