
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int gd5fxgq4xa_ooblayout_free(struct mtd_info *mtd, int section,
       struct mtd_oob_region *region)
{
 if (section > 3)
  return -ERANGE;

 if (section) {
  region->offset = 16 * section;
  region->length = 8;
 } else {

  region->offset = 1;
  region->length = 7;
 }
 return 0;
}
