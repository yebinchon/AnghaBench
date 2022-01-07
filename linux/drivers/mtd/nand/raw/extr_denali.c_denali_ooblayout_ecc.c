
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int dummy; } ;
struct denali_controller {int oob_skip_bytes; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_ooblayout_ecc(struct mtd_info *mtd, int section,
    struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct denali_controller *denali = to_denali_controller(chip);

 if (section > 0)
  return -ERANGE;

 oobregion->offset = denali->oob_skip_bytes;
 oobregion->length = chip->ecc.total;

 return 0;
}
