
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dummy; } ;
struct adp5520_chip {int lock; } ;


 int __adp5520_read (struct i2c_client*,int,int *) ;
 int __adp5520_write (struct i2c_client*,int,int ) ;
 struct adp5520_chip* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __adp5520_ack_bits(struct i2c_client *client, int reg,
         uint8_t bit_mask)
{
 struct adp5520_chip *chip = i2c_get_clientdata(client);
 uint8_t reg_val;
 int ret;

 mutex_lock(&chip->lock);

 ret = __adp5520_read(client, reg, &reg_val);

 if (!ret) {
  reg_val |= bit_mask;
  ret = __adp5520_write(client, reg, reg_val);
 }

 mutex_unlock(&chip->lock);
 return ret;
}
