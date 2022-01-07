
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_chip {int io_lock; } ;
struct i2c_client {int dummy; } ;


 struct max8925_chip* i2c_get_clientdata (struct i2c_client*) ;
 int max8925_write_device (struct i2c_client*,int,int,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int max8925_reg_write(struct i2c_client *i2c, int reg,
  unsigned char data)
{
 struct max8925_chip *chip = i2c_get_clientdata(i2c);
 int ret;

 mutex_lock(&chip->io_lock);
 ret = max8925_write_device(i2c, reg, 1, &data);
 mutex_unlock(&chip->io_lock);

 return ret;
}
