
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {TYPE_1__* pairing; } ;
struct TYPE_2__ {int ngroups; } ;



int mtd_pairing_groups(struct mtd_info *mtd)
{
 if (!mtd->pairing || !mtd->pairing->ngroups)
  return 1;

 return mtd->pairing->ngroups;
}
