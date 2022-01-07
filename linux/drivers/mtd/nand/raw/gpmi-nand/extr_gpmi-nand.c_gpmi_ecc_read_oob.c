
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct gpmi_nand_data {int dummy; } ;


 scalar_t__ GPMI_IS_MX23 (struct gpmi_nand_data*) ;
 int memset (int ,int ,int) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int ,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_ecc_read_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 int ret;


 memset(chip->oob_poi, ~0, mtd->oobsize);


 ret = nand_read_page_op(chip, page, mtd->writesize, chip->oob_poi,
    mtd->oobsize);
 if (ret)
  return ret;






 if (GPMI_IS_MX23(this)) {

  ret = nand_read_page_op(chip, page, 0, chip->oob_poi, 1);
  if (ret)
   return ret;
 }

 return 0;
}
