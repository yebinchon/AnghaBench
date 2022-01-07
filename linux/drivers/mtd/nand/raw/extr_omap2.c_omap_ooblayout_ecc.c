
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; } ;
struct nand_chip {int options; TYPE_1__ ecc; } ;
struct omap_nand_info {scalar_t__ ecc_opt; struct nand_chip nand; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int BADBLOCK_MARKER_LENGTH ;
 int ERANGE ;
 int NAND_BUSWIDTH_16 ;
 scalar_t__ OMAP_ECC_HAM1_CODE_HW ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;

__attribute__((used)) static int omap_ooblayout_ecc(struct mtd_info *mtd, int section,
         struct mtd_oob_region *oobregion)
{
 struct omap_nand_info *info = mtd_to_omap(mtd);
 struct nand_chip *chip = &info->nand;
 int off = BADBLOCK_MARKER_LENGTH;

 if (info->ecc_opt == OMAP_ECC_HAM1_CODE_HW &&
     !(chip->options & NAND_BUSWIDTH_16))
  off = 1;

 if (section)
  return -ERANGE;

 oobregion->offset = off;
 oobregion->length = chip->ecc.total;

 return 0;
}
