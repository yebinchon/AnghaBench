
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int rev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int regmap_register_patch (int ,int ,int ) ;
 int wm5110_reva_patch ;
 int wm5110_revb_patch ;
 int wm5110_revd_patch ;
 int wm5110_reve_patch ;

int wm5110_patch(struct arizona *arizona)
{
 switch (arizona->rev) {
 case 0:
  return regmap_register_patch(arizona->regmap,
          wm5110_reva_patch,
          ARRAY_SIZE(wm5110_reva_patch));
 case 1:
  return regmap_register_patch(arizona->regmap,
          wm5110_revb_patch,
          ARRAY_SIZE(wm5110_revb_patch));
 case 3:
  return regmap_register_patch(arizona->regmap,
          wm5110_revd_patch,
          ARRAY_SIZE(wm5110_revd_patch));
 default:
  return regmap_register_patch(arizona->regmap,
          wm5110_reve_patch,
          ARRAY_SIZE(wm5110_reve_patch));
 }
}
