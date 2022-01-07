
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;


 int TPS68470_REG_RESET ;
 int TPS68470_REG_RESET_MASK ;
 int TPS68470_REG_REVID ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int tps68470_chip_init(struct device *dev, struct regmap *regmap)
{
 unsigned int version;
 int ret;


 ret = regmap_write(regmap, TPS68470_REG_RESET, TPS68470_REG_RESET_MASK);
 if (ret)
  return ret;

 ret = regmap_read(regmap, TPS68470_REG_REVID, &version);
 if (ret) {
  dev_err(dev, "Failed to read revision register: %d\n", ret);
  return ret;
 }

 dev_info(dev, "TPS68470 REVID: 0x%x\n", version);

 return 0;
}
