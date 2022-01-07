
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int bxtwc_reg_addr ;
 int dev_err (struct device*,char*,int ) ;
 struct intel_soc_pmic* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t bxtwc_val_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int ret;
 unsigned int val;
 struct intel_soc_pmic *pmic = dev_get_drvdata(dev);

 ret = regmap_read(pmic->regmap, bxtwc_reg_addr, &val);
 if (ret < 0) {
  dev_err(dev, "Failed to read 0x%lx\n", bxtwc_reg_addr);
  return -EIO;
 }

 return sprintf(buf, "0x%02x\n", val);
}
