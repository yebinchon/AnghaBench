
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int steps; int bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int meson_ooblayout_free(struct mtd_info *mtd, int section,
    struct mtd_oob_region *oobregion)
{
 struct nand_chip *nand = mtd_to_nand(mtd);

 if (section >= nand->ecc.steps)
  return -ERANGE;

 oobregion->offset = section * (2 + nand->ecc.bytes);
 oobregion->length = 2;

 return 0;
}
