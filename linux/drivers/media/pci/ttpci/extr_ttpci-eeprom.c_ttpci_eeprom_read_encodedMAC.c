
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int ttpci_eeprom_read_encodedMAC(struct i2c_adapter *adapter, u8 * encodedMAC)
{
 int ret;
 u8 b0[] = { 0xcc };

 struct i2c_msg msg[] = {
  { .addr = 0x50, .flags = 0, .buf = b0, .len = 1 },
  { .addr = 0x50, .flags = I2C_M_RD, .buf = encodedMAC, .len = 20 }
 };



 ret = i2c_transfer(adapter, msg, 2);

 if (ret != 2)
  return (-ENODEV);

 return 0;
}
