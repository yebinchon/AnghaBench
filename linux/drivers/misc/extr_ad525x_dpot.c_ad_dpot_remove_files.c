
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 unsigned int F_CMD_EEP ;
 unsigned int F_CMD_OTP ;
 unsigned int F_CMD_TOL ;
 int * dpot_attrib_eeprom ;
 int * dpot_attrib_otp ;
 int * dpot_attrib_otp_en ;
 int * dpot_attrib_tolerance ;
 int * dpot_attrib_wipers ;
 int sysfs_remove_file (int *,int ) ;

__attribute__((used)) static inline void ad_dpot_remove_files(struct device *dev,
  unsigned int features, unsigned int rdac)
{
 sysfs_remove_file(&dev->kobj,
  dpot_attrib_wipers[rdac]);
 if (features & F_CMD_EEP)
  sysfs_remove_file(&dev->kobj,
   dpot_attrib_eeprom[rdac]);
 if (features & F_CMD_TOL)
  sysfs_remove_file(&dev->kobj,
   dpot_attrib_tolerance[rdac]);
 if (features & F_CMD_OTP) {
  sysfs_remove_file(&dev->kobj,
   dpot_attrib_otp_en[rdac]);
  sysfs_remove_file(&dev->kobj,
   dpot_attrib_otp[rdac]);
 }
}
