
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adin_cfg_reg_map {int cfg; int reg; } ;


 int EINVAL ;

__attribute__((used)) static int adin_lookup_reg_value(const struct adin_cfg_reg_map *tbl, int cfg)
{
 size_t i;

 for (i = 0; tbl[i].cfg; i++) {
  if (tbl[i].cfg == cfg)
   return tbl[i].reg;
 }

 return -EINVAL;
}
