
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int EPERM ;
 int regcache_cache_bypass (struct regmap*,int) ;
 struct regmap* twl_get_regmap (int ) ;

int twl_set_regcache_bypass(u8 mod_no, bool enable)
{
 struct regmap *regmap = twl_get_regmap(mod_no);

 if (!regmap)
  return -EPERM;

 regcache_cache_bypass(regmap, enable);

 return 0;
}
