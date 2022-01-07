
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int cs47l24_reva_patch ;
 int regmap_register_patch (int ,int ,int ) ;

int cs47l24_patch(struct arizona *arizona)
{
 return regmap_register_patch(arizona->regmap,
         cs47l24_reva_patch,
         ARRAY_SIZE(cs47l24_reva_patch));
}
