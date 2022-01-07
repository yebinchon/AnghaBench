
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpot_data {int rdac_mask; int update_lock; int otp_en_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s32 ;


 int DPOT_ADDR_OTP_EN ;
 int DPOT_RDAC_MASK ;
 int DPOT_REG_TOL ;
 int EINVAL ;
 struct dpot_data* dev_get_drvdata (struct device*) ;
 int dpot_read (struct dpot_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static ssize_t sysfs_show_reg(struct device *dev,
         struct device_attribute *attr,
         char *buf, u32 reg)
{
 struct dpot_data *data = dev_get_drvdata(dev);
 s32 value;

 if (reg & DPOT_ADDR_OTP_EN)
  return sprintf(buf, "%s\n",
   test_bit(DPOT_RDAC_MASK & reg, data->otp_en_mask) ?
   "enabled" : "disabled");


 mutex_lock(&data->update_lock);
 value = dpot_read(data, reg);
 mutex_unlock(&data->update_lock);

 if (value < 0)
  return -EINVAL;
 if (reg & DPOT_REG_TOL)
  return sprintf(buf, "0x%04x\n", value & 0xFFFF);
 else
  return sprintf(buf, "%u\n", value & data->rdac_mask);
}
