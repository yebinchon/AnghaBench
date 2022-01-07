
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8998_dev {int iolock; } ;
struct i2c_client {int dummy; } ;


 struct max8998_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int max8998_write_reg(struct i2c_client *i2c, u8 reg, u8 value)
{
 struct max8998_dev *max8998 = i2c_get_clientdata(i2c);
 int ret;

 mutex_lock(&max8998->iolock);
 ret = i2c_smbus_write_byte_data(i2c, reg, value);
 mutex_unlock(&max8998->iolock);
 return ret;
}
