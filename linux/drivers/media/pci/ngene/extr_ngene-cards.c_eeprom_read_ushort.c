
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int ReadEEProm (struct i2c_adapter*,int,int,int*,int*) ;

__attribute__((used)) static int eeprom_read_ushort(struct i2c_adapter *adapter, u16 tag, u16 *data)
{
 int stat;
 u8 buf[2];
 u32 len = 0;

 stat = ReadEEProm(adapter, tag, 2, buf, &len);
 if (stat)
  return stat;
 if (len != 2)
  return -EINVAL;

 *data = (buf[0] << 8) | buf[1];
 return 0;
}
