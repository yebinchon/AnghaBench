
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int length; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int s3c2410_ooblayout_ecc(struct mtd_info *mtd, int section,
     struct mtd_oob_region *oobregion)
{
 if (section)
  return -ERANGE;

 oobregion->offset = 0;
 oobregion->length = 3;

 return 0;
}
