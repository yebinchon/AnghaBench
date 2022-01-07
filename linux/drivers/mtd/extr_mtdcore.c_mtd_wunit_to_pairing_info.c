
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_pairing_info {int pair; scalar_t__ group; } ;
struct mtd_info {TYPE_1__* pairing; } ;
struct TYPE_2__ {int (* get_info ) (struct mtd_info*,int,struct mtd_pairing_info*) ;} ;


 int EINVAL ;
 int mtd_pairing_groups (struct mtd_info*) ;
 int mtd_wunit_per_eb (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int,struct mtd_pairing_info*) ;

int mtd_wunit_to_pairing_info(struct mtd_info *mtd, int wunit,
         struct mtd_pairing_info *info)
{
 int npairs = mtd_wunit_per_eb(mtd) / mtd_pairing_groups(mtd);

 if (wunit < 0 || wunit >= npairs)
  return -EINVAL;

 if (mtd->pairing && mtd->pairing->get_info)
  return mtd->pairing->get_info(mtd, wunit, info);

 info->group = 0;
 info->pair = wunit;

 return 0;
}
