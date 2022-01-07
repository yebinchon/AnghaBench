
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes; int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int oobsize; } ;


 int BADBLOCK_MARKER_LENGTH ;
 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int omap_sw_ooblayout_free(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 int off = BADBLOCK_MARKER_LENGTH;

 if (section)
  return -ERANGE;





 off += ((chip->ecc.bytes + 1) * chip->ecc.steps);
 if (off >= mtd->oobsize)
  return -ERANGE;

 oobregion->offset = off;
 oobregion->length = mtd->oobsize - off;

 return 0;
}
