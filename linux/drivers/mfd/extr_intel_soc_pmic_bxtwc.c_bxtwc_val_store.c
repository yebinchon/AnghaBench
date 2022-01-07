
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
 int dev_err (struct device*,char*,unsigned int,int ) ;
 struct intel_soc_pmic* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static ssize_t bxtwc_val_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 int ret;
 unsigned int val;
 struct intel_soc_pmic *pmic = dev_get_drvdata(dev);

 ret = kstrtouint(buf, 0, &val);
 if (ret)
  return ret;

 ret = regmap_write(pmic->regmap, bxtwc_reg_addr, val);
 if (ret) {
  dev_err(dev, "Failed to write value 0x%02x to address 0x%lx",
   val, bxtwc_reg_addr);
  return -EIO;
 }
 return count;
}
