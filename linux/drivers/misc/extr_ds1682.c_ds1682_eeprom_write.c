
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct i2c_client {int dev; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 scalar_t__ DS1682_REG_EEPROM ;
 size_t EIO ;
 int dev_dbg (int *,char*,char*,scalar_t__,size_t) ;
 scalar_t__ i2c_smbus_write_i2c_block_data (struct i2c_client*,scalar_t__,size_t,char*) ;
 struct i2c_client* kobj_to_i2c_client (struct kobject*) ;

__attribute__((used)) static ssize_t ds1682_eeprom_write(struct file *filp, struct kobject *kobj,
       struct bin_attribute *attr,
       char *buf, loff_t off, size_t count)
{
 struct i2c_client *client = kobj_to_i2c_client(kobj);

 dev_dbg(&client->dev, "ds1682_eeprom_write(p=%p, off=%lli, c=%zi)\n",
  buf, off, count);


 if (i2c_smbus_write_i2c_block_data(client, DS1682_REG_EEPROM + off,
        count, buf) < 0)
  return -EIO;

 return count;
}
