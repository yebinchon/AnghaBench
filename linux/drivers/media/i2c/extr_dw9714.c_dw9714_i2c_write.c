
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int __be16 ;


 int EIO ;
 int cpu_to_be16 (int ) ;
 int dev_err (int *,char*) ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;

__attribute__((used)) static int dw9714_i2c_write(struct i2c_client *client, u16 data)
{
 int ret;
 __be16 val = cpu_to_be16(data);

 ret = i2c_master_send(client, (const char *)&val, sizeof(val));
 if (ret != sizeof(val)) {
  dev_err(&client->dev, "I2C write fail\n");
  return -EIO;
 }
 return 0;
}
