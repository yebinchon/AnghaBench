
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; scalar_t__ length; } ;
struct mtd_info {scalar_t__ oobsize; } ;


 int ERANGE ;

__attribute__((used)) static int mx35lfxge4ab_ooblayout_free(struct mtd_info *mtd, int section,
           struct mtd_oob_region *region)
{
 if (section)
  return -ERANGE;

 region->offset = 2;
 region->length = mtd->oobsize - 2;

 return 0;
}
