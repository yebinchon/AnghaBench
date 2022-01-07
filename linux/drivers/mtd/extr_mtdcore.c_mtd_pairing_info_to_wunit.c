
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_pairing_info {int pair; int group; } ;
struct mtd_info {TYPE_1__* pairing; } ;
struct TYPE_2__ {int (* get_wunit ) (struct mtd_info*,struct mtd_pairing_info const*) ;} ;


 int EINVAL ;
 int mtd_pairing_groups (struct mtd_info*) ;
 int mtd_wunit_per_eb (struct mtd_info*) ;
 int stub1 (struct mtd_info*,struct mtd_pairing_info const*) ;

int mtd_pairing_info_to_wunit(struct mtd_info *mtd,
         const struct mtd_pairing_info *info)
{
 int ngroups = mtd_pairing_groups(mtd);
 int npairs = mtd_wunit_per_eb(mtd) / ngroups;

 if (!info || info->pair < 0 || info->pair >= npairs ||
     info->group < 0 || info->group >= ngroups)
  return -EINVAL;

 if (mtd->pairing && mtd->pairing->get_wunit)
  return mtd->pairing->get_wunit(mtd, info);

 return info->pair;
}
