
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dev; int regmap_32bit; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int cs47l92_reva_16_patch ;
 int cs47l92_reva_32_patch ;
 int dev_err (int ,char*,int) ;
 int regmap_register_patch (int ,int ,int ) ;

int cs47l92_patch(struct madera *madera)
{
 int ret;

 ret = regmap_register_patch(madera->regmap,
        cs47l92_reva_16_patch,
        ARRAY_SIZE(cs47l92_reva_16_patch));
 if (ret < 0) {
  dev_err(madera->dev,
   "Error in applying 16-bit patch: %d\n", ret);
  return ret;
 }

 ret = regmap_register_patch(madera->regmap_32bit,
        cs47l92_reva_32_patch,
        ARRAY_SIZE(cs47l92_reva_32_patch));
 if (ret < 0) {
  dev_err(madera->dev,
   "Error in applying 32-bit patch: %d\n", ret);
  return ret;
 }

 return 0;
}
