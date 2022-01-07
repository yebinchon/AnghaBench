
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static inline int __da903x_write(struct i2c_client *client,
     int reg, uint8_t val)
{
 int ret;

 ret = i2c_smbus_write_byte_data(client, reg, val);
 if (ret < 0) {
  dev_err(&client->dev, "failed writing 0x%02x to 0x%02x\n",
    val, reg);
  return ret;
 }
 return 0;
}
