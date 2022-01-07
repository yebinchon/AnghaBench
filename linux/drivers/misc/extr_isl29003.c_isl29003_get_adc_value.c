
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29003_data {int lock; } ;
struct i2c_client {int dummy; } ;


 int ISL29003_REG_LSB_SENSOR ;
 int ISL29003_REG_MSB_SENSOR ;
 int* gain_range ;
 struct isl29003_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int isl29003_get_range (struct i2c_client*) ;
 int isl29003_get_resolution (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isl29003_get_adc_value(struct i2c_client *client)
{
 struct isl29003_data *data = i2c_get_clientdata(client);
 int lsb, msb, range, bitdepth;

 mutex_lock(&data->lock);
 lsb = i2c_smbus_read_byte_data(client, ISL29003_REG_LSB_SENSOR);

 if (lsb < 0) {
  mutex_unlock(&data->lock);
  return lsb;
 }

 msb = i2c_smbus_read_byte_data(client, ISL29003_REG_MSB_SENSOR);
 mutex_unlock(&data->lock);

 if (msb < 0)
  return msb;

 range = isl29003_get_range(client);
 bitdepth = (4 - isl29003_get_resolution(client)) * 4;
 return (((msb << 8) | lsb) * gain_range[range]) >> bitdepth;
}
