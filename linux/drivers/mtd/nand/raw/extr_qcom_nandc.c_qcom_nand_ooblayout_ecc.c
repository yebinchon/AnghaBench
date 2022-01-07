
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_host {scalar_t__ spare_bytes; scalar_t__ ecc_bytes_hw; scalar_t__ bbm_size; } ;
struct nand_ecc_ctrl {int bytes; int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {scalar_t__ length; scalar_t__ offset; } ;
struct mtd_info {scalar_t__ oobsize; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;

__attribute__((used)) static int qcom_nand_ooblayout_ecc(struct mtd_info *mtd, int section,
       struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 if (section > 1)
  return -ERANGE;

 if (!section) {
  oobregion->length = (ecc->bytes * (ecc->steps - 1)) +
        host->bbm_size;
  oobregion->offset = 0;
 } else {
  oobregion->length = host->ecc_bytes_hw + host->spare_bytes;
  oobregion->offset = mtd->oobsize - oobregion->length;
 }

 return 0;
}
