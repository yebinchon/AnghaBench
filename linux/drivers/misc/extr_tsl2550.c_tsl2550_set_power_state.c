
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2550_data {int power_state; int operating_mode; } ;
struct i2c_client {int dummy; } ;


 int TSL2550_POWER_DOWN ;
 int TSL2550_POWER_UP ;
 struct tsl2550_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int tsl2550_set_operating_mode (struct i2c_client*,int ) ;

__attribute__((used)) static int tsl2550_set_power_state(struct i2c_client *client, int state)
{
 struct tsl2550_data *data = i2c_get_clientdata(client);
 int ret;

 if (state == 0)
  ret = i2c_smbus_write_byte(client, TSL2550_POWER_DOWN);
 else {
  ret = i2c_smbus_write_byte(client, TSL2550_POWER_UP);


  tsl2550_set_operating_mode(client, data->operating_mode);
 }

 data->power_state = state;

 return ret;
}
