
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8997_dev {int iolock; } ;
struct i2c_client {int dummy; } ;


 struct max8997_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int max8997_bulk_read(struct i2c_client *i2c, u8 reg, int count, u8 *buf)
{
 struct max8997_dev *max8997 = i2c_get_clientdata(i2c);
 int ret;

 mutex_lock(&max8997->iolock);
 ret = i2c_smbus_read_i2c_block_data(i2c, reg, count, buf);
 mutex_unlock(&max8997->iolock);
 if (ret < 0)
  return ret;

 return 0;
}
