
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_oob_region {scalar_t__ offset; scalar_t__ length; } ;
struct mtd_info {scalar_t__ writesize; scalar_t__ oobsize; } ;
struct bch_geometry {scalar_t__ page_size; } ;
struct gpmi_nand_data {struct bch_geometry bch_geometry; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int gpmi_ooblayout_free(struct mtd_info *mtd, int section,
          struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 struct bch_geometry *geo = &this->bch_geometry;

 if (section)
  return -ERANGE;


 if (geo->page_size < mtd->writesize + mtd->oobsize) {
  oobregion->offset = geo->page_size - mtd->writesize;
  oobregion->length = mtd->oobsize - oobregion->offset;
 }

 return 0;
}
