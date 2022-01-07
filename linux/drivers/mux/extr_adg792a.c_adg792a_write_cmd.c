
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ADG792A_LDSW ;
 int ADG792A_RESETB ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int adg792a_write_cmd(struct i2c_client *i2c, u8 cmd, int reset)
{
 u8 data = ADG792A_RESETB | ADG792A_LDSW;


 if (reset)
  data &= ~ADG792A_RESETB;

 return i2c_smbus_write_byte_data(i2c, cmd, data);
}
