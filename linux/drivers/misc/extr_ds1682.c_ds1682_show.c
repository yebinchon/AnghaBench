
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sensor_device_attribute_2 {scalar_t__ index; int nr; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ __le32 ;


 scalar_t__ DS1682_REG_ELAPSED ;
 int EIO ;
 int dev_dbg (struct device*,char*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,scalar_t__,int,int *) ;
 unsigned long long le32_to_cpu (scalar_t__) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ds1682_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 unsigned long long val, check;
 __le32 val_le = 0;
 int rc;

 dev_dbg(dev, "ds1682_show() called on %s\n", attr->attr.name);


 rc = i2c_smbus_read_i2c_block_data(client, sattr->index, sattr->nr,
        (u8 *)&val_le);
 if (rc < 0)
  return -EIO;

 val = le32_to_cpu(val_le);

 if (sattr->index == DS1682_REG_ELAPSED) {
  int retries = 5;


  do {
   rc = i2c_smbus_read_i2c_block_data(client, sattr->index,
          sattr->nr,
          (u8 *)&val_le);
   if (rc < 0 || retries <= 0)
    return -EIO;

   check = val;
   val = le32_to_cpu(val_le);
   retries--;
  } while (val != check && val != (check + 1));
 }





 return sprintf(buf, "%llu\n", (sattr->nr == 4) ? (val * 250) : val);
}
