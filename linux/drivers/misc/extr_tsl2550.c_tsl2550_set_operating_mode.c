
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2550_data {int operating_mode; } ;
struct i2c_client {int dummy; } ;


 int * TSL2550_MODE_RANGE ;
 struct tsl2550_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int tsl2550_set_operating_mode(struct i2c_client *client, int mode)
{
 struct tsl2550_data *data = i2c_get_clientdata(client);

 int ret = i2c_smbus_write_byte(client, TSL2550_MODE_RANGE[mode]);

 data->operating_mode = mode;

 return ret;
}
