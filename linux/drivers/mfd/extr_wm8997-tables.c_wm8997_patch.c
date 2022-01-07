
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int rev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int regmap_register_patch (int ,int ,int ) ;
 int wm8997_reva_patch ;

int wm8997_patch(struct arizona *arizona)
{
 switch (arizona->rev) {
 case 0:
  return regmap_register_patch(arizona->regmap,
          wm8997_reva_patch,
          ARRAY_SIZE(wm8997_reva_patch));
 default:
  return 0;
 }
}
