
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int RC5T583_DS_DC0 ;
 int RICOH_ONOFFSEL_REG ;
 int dev_err (struct device*,char*,...) ;
 int rc5t583_set_bits (struct device*,int ,int ) ;

__attribute__((used)) static int __rc5t583_set_ext_pwrreq2_control(struct device *dev,
 int id, int ext_pwr)
{
 int ret;

 if (id != RC5T583_DS_DC0) {
  dev_err(dev, "PWRREQ2 is invalid control for rail %d\n", id);
  return -EINVAL;
 }

 ret = rc5t583_set_bits(dev, RICOH_ONOFFSEL_REG, BIT(2));
 if (ret < 0)
  dev_err(dev, "Error in updating the ONOFFSEL 0x10 register\n");
 return ret;
}
