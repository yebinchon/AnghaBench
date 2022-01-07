
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int i2c_smbus_write_word_data (void*,int ,int ) ;

__attribute__((used)) static int write_r8d16(void *client, u8 reg, u16 val)
{
 return i2c_smbus_write_word_data(client, reg, val);
}
