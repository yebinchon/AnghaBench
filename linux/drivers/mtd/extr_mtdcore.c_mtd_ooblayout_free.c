
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_oob_region {int dummy; } ;
struct mtd_info {TYPE_1__* ooblayout; } ;
struct TYPE_2__ {int (* free ) (struct mtd_info*,int,struct mtd_oob_region*) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int memset (struct mtd_oob_region*,int ,int) ;
 int stub1 (struct mtd_info*,int,struct mtd_oob_region*) ;

int mtd_ooblayout_free(struct mtd_info *mtd, int section,
         struct mtd_oob_region *oobfree)
{
 memset(oobfree, 0, sizeof(*oobfree));

 if (!mtd || section < 0)
  return -EINVAL;

 if (!mtd->ooblayout || !mtd->ooblayout->free)
  return -ENOTSUPP;

 return mtd->ooblayout->free(mtd, section, oobfree);
}
