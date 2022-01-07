
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
typedef int ssize_t ;


 unsigned int EE1004_PAGE_SIZE ;
 size_t I2C_SMBUS_BLOCK_MAX ;
 int dev_dbg (int *,char*,size_t,unsigned int,int) ;
 int i2c_smbus_read_i2c_block_data_or_emulated (struct i2c_client*,unsigned int,size_t,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t ee1004_eeprom_read(struct i2c_client *client, char *buf,
      unsigned int offset, size_t count)
{
 int status;

 if (count > I2C_SMBUS_BLOCK_MAX)
  count = I2C_SMBUS_BLOCK_MAX;

 if (unlikely(offset + count > EE1004_PAGE_SIZE))
  count = EE1004_PAGE_SIZE - offset;

 status = i2c_smbus_read_i2c_block_data_or_emulated(client, offset,
          count, buf);
 dev_dbg(&client->dev, "read %zu@%d --> %d\n", count, offset, status);

 return status;
}
