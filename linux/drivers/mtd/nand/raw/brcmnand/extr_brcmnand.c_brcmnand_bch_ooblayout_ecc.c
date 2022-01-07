
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {scalar_t__ length; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_cfg {int spare_area_size; int sector_size_1k; int page_size; } ;
struct brcmnand_host {struct brcmnand_cfg hwcfg; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_bch_ooblayout_ecc(struct mtd_info *mtd, int section,
          struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_cfg *cfg = &host->hwcfg;
 int sas = cfg->spare_area_size << cfg->sector_size_1k;
 int sectors = cfg->page_size / (512 << cfg->sector_size_1k);

 if (section >= sectors)
  return -ERANGE;

 oobregion->offset = ((section + 1) * sas) - chip->ecc.bytes;
 oobregion->length = chip->ecc.bytes;

 return 0;
}
