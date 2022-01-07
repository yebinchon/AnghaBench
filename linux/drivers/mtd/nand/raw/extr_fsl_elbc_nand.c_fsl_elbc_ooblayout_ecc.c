
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int steps; int bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;
struct fsl_elbc_mtd {int fmr; } ;


 int ERANGE ;
 int FMR_ECCM ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int fsl_elbc_ooblayout_ecc(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);

 if (section >= chip->ecc.steps)
  return -ERANGE;

 oobregion->offset = (16 * section) + 6;
 if (priv->fmr & FMR_ECCM)
  oobregion->offset += 2;

 oobregion->length = chip->ecc.bytes;

 return 0;
}
