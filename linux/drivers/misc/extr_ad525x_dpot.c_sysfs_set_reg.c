
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpot_data {unsigned long rdac_mask; int update_lock; int otp_en_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DPOT_ADDR_EEPROM ;
 int DPOT_ADDR_OTP ;
 int DPOT_ADDR_OTP_EN ;
 int DPOT_RDAC_MASK ;
 size_t EPERM ;
 int clear_bit (int,int ) ;
 struct dpot_data* dev_get_drvdata (struct device*) ;
 int dpot_write (struct dpot_data*,int,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static ssize_t sysfs_set_reg(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count, u32 reg)
{
 struct dpot_data *data = dev_get_drvdata(dev);
 unsigned long value;
 int err;

 if (reg & DPOT_ADDR_OTP_EN) {
  if (sysfs_streq(buf, "enabled"))
   set_bit(DPOT_RDAC_MASK & reg, data->otp_en_mask);
  else
   clear_bit(DPOT_RDAC_MASK & reg, data->otp_en_mask);

  return count;
 }

 if ((reg & DPOT_ADDR_OTP) &&
  !test_bit(DPOT_RDAC_MASK & reg, data->otp_en_mask))
  return -EPERM;

 err = kstrtoul(buf, 10, &value);
 if (err)
  return err;

 if (value > data->rdac_mask)
  value = data->rdac_mask;

 mutex_lock(&data->update_lock);
 dpot_write(data, reg, value);
 if (reg & DPOT_ADDR_EEPROM)
  msleep(26);
 else if (reg & DPOT_ADDR_OTP)
  msleep(400);
 mutex_unlock(&data->update_lock);

 return count;
}
