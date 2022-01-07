
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_reg_map {int regblk; int mask; int num_ranges; TYPE_1__* range; } ;
struct TYPE_2__ {int start; int end; } ;


 int NIX_TXSCH_LVL_CNT ;
 int TXSCHQ_HWREGMAP ;
 struct hw_reg_map* txsch_reg_map ;

bool rvu_check_valid_reg(int regmap, int regblk, u64 reg)
{
 int idx;
 struct hw_reg_map *map;


 if (reg & 0x07)
  return 0;

 if (regmap == TXSCHQ_HWREGMAP) {
  if (regblk >= NIX_TXSCH_LVL_CNT)
   return 0;
  map = &txsch_reg_map[regblk];
 } else {
  return 0;
 }


 if (map->regblk != regblk)
  return 0;

 reg &= map->mask;

 for (idx = 0; idx < map->num_ranges; idx++) {
  if (reg >= map->range[idx].start &&
      reg < map->range[idx].end)
   return 1;
 }
 return 0;
}
