
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int,int,int *) ;

__attribute__((used)) static inline int __da903x_writes(struct i2c_client *client, int reg,
      int len, uint8_t *val)
{
 int ret;

 ret = i2c_smbus_write_i2c_block_data(client, reg, len, val);
 if (ret < 0) {
  dev_err(&client->dev, "failed writings to 0x%02x\n", reg);
  return ret;
 }
 return 0;
}
