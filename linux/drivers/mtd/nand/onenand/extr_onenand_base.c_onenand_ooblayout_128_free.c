
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int onenand_ooblayout_128_free(struct mtd_info *mtd, int section,
          struct mtd_oob_region *oobregion)
{
 if (section >= 8)
  return -ERANGE;





 oobregion->offset = (section * 16) + 2;
 oobregion->length = 3;

 return 0;
}
