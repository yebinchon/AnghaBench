
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int regmap_register_patch (int ,int ,int ) ;
 int wm8998_rev_a_patch ;

int wm8998_patch(struct arizona *arizona)
{
 return regmap_register_patch(arizona->regmap,
         wm8998_rev_a_patch,
         ARRAY_SIZE(wm8998_rev_a_patch));
}
