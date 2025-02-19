
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int,int,void*) ;

__attribute__((used)) static inline int max8925_read_device(struct i2c_client *i2c,
          int reg, int bytes, void *dest)
{
 int ret;

 if (bytes > 1)
  ret = i2c_smbus_read_i2c_block_data(i2c, reg, bytes, dest);
 else {
  ret = i2c_smbus_read_byte_data(i2c, reg);
  if (ret < 0)
   return ret;
  *(unsigned char *)dest = (unsigned char)ret;
 }
 return ret;
}
