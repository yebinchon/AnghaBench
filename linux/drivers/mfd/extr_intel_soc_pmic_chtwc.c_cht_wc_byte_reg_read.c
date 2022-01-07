
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; int dev; } ;


 int EINVAL ;
 unsigned int REG_ADDR_MASK ;
 unsigned int REG_ADDR_SHIFT ;
 unsigned int REG_OFFSET_MASK ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned int) ;

__attribute__((used)) static int cht_wc_byte_reg_read(void *context, unsigned int reg,
    unsigned int *val)
{
 struct i2c_client *client = context;
 int ret, orig_addr = client->addr;

 if (!(reg & REG_ADDR_MASK)) {
  dev_err(&client->dev, "Error I2C address not specified\n");
  return -EINVAL;
 }

 client->addr = (reg & REG_ADDR_MASK) >> REG_ADDR_SHIFT;
 ret = i2c_smbus_read_byte_data(client, reg & REG_OFFSET_MASK);
 client->addr = orig_addr;

 if (ret < 0)
  return ret;

 *val = ret;
 return 0;
}
