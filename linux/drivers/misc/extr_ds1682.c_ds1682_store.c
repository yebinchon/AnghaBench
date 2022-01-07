
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int __le32 ;


 size_t EINVAL ;
 size_t EIO ;
 int cpu_to_le32 (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int ,int) ;
 int do_div (int ,int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int kstrtoull (char const*,int ,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ds1682_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 u64 val;
 __le32 val_le;
 int rc;

 dev_dbg(dev, "ds1682_store() called on %s\n", attr->attr.name);


 rc = kstrtoull(buf, 0, &val);
 if (rc < 0) {
  dev_dbg(dev, "input string not a number\n");
  return -EINVAL;
 }



 if (sattr->nr == 4)
  do_div(val, 250);


 val_le = cpu_to_le32(val);
 rc = i2c_smbus_write_i2c_block_data(client, sattr->index, sattr->nr,
         (u8 *) & val_le);
 if (rc < 0) {
  dev_err(dev, "register write failed; reg=0x%x, size=%i\n",
   sattr->index, sattr->nr);
  return -EIO;
 }

 return count;
}
