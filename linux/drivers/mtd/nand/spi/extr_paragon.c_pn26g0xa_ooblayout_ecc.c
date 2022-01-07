
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int pn26g0xa_ooblayout_ecc(struct mtd_info *mtd, int section,
       struct mtd_oob_region *region)
{
 if (section > 3)
  return -ERANGE;

 region->offset = 6 + (15 * section);
 region->length = 13;

 return 0;
}
