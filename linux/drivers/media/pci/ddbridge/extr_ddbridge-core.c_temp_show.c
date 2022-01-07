
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb_link {TYPE_2__* info; } ;
struct ddb {TYPE_1__* i2c; struct ddb_link* link; } ;
typedef int ssize_t ;
struct TYPE_4__ {int temp_num; size_t temp_bus; } ;
struct TYPE_3__ {struct i2c_adapter adap; } ;


 struct ddb* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_read_regs (struct i2c_adapter*,int,int ,int*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t temp_show(struct device *device,
    struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 struct ddb_link *link = &dev->link[0];
 struct i2c_adapter *adap;
 int temp, temp2;
 u8 tmp[2];

 if (!link->info->temp_num)
  return sprintf(buf, "no sensor\n");
 adap = &dev->i2c[link->info->temp_bus].adap;
 if (i2c_read_regs(adap, 0x48, 0, tmp, 2) < 0)
  return sprintf(buf, "read_error\n");
 temp = (tmp[0] << 3) | (tmp[1] >> 5);
 temp *= 125;
 if (link->info->temp_num == 2) {
  if (i2c_read_regs(adap, 0x49, 0, tmp, 2) < 0)
   return sprintf(buf, "read_error\n");
  temp2 = (tmp[0] << 3) | (tmp[1] >> 5);
  temp2 *= 125;
  return sprintf(buf, "%d %d\n", temp, temp2);
 }
 return sprintf(buf, "%d\n", temp);
}
