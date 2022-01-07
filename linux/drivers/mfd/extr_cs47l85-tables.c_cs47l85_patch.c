
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_sequence {int dummy; } ;
struct madera {int rev; int dev; int regmap_32bit; int regmap; } ;


 unsigned int ARRAY_SIZE (struct reg_sequence*) ;
 struct reg_sequence* cs47l85_reva_16_patch ;
 struct reg_sequence* cs47l85_reva_32_patch ;
 struct reg_sequence* cs47l85_revc_16_patch ;
 struct reg_sequence* cs47l85_revc_32_patch ;
 int dev_err (int ,char*,int) ;
 int regmap_register_patch (int ,struct reg_sequence const*,unsigned int) ;

int cs47l85_patch(struct madera *madera)
{
 int ret = 0;
 const struct reg_sequence *patch16;
 const struct reg_sequence *patch32;
 unsigned int num16, num32;

 switch (madera->rev) {
 case 0:
 case 1:
  patch16 = cs47l85_reva_16_patch;
  num16 = ARRAY_SIZE(cs47l85_reva_16_patch);

  patch32 = cs47l85_reva_32_patch;
  num32 = ARRAY_SIZE(cs47l85_reva_32_patch);
  break;
 default:
  patch16 = cs47l85_revc_16_patch;
  num16 = ARRAY_SIZE(cs47l85_revc_16_patch);

  patch32 = cs47l85_revc_32_patch;
  num32 = ARRAY_SIZE(cs47l85_revc_32_patch);
  break;
 }

 ret = regmap_register_patch(madera->regmap, patch16, num16);
 if (ret < 0) {
  dev_err(madera->dev,
   "Error in applying 16-bit patch: %d\n", ret);
  return ret;
 }

 ret = regmap_register_patch(madera->regmap_32bit, patch32, num32);
 if (ret < 0) {
  dev_err(madera->dev,
   "Error in applying 32-bit patch: %d\n", ret);
  return ret;
 }

 return 0;
}
