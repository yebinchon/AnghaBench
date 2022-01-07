
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int mt29f2g01abagd_ooblayout_ecc(struct mtd_info *mtd, int section,
     struct mtd_oob_region *region)
{
 if (section)
  return -ERANGE;

 region->offset = 64;
 region->length = 64;

 return 0;
}
