
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int i2c_smbus_write_byte (void*,int ) ;

__attribute__((used)) static int write_d8(void *client, u8 val)
{
 return i2c_smbus_write_byte(client, val);
}
