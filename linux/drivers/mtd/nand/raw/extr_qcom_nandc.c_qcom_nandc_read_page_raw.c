
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct qcom_nand_host {int cw_data; } ;
struct nand_ecc_ctrl {int steps; int bytes; } ;
struct nand_chip {int * oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int dummy; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int qcom_nandc_read_cw_raw (struct mtd_info*,struct nand_chip*,int *,int *,int,int) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;

__attribute__((used)) static int qcom_nandc_read_page_raw(struct nand_chip *chip, uint8_t *buf,
        int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int cw, ret;
 u8 *data_buf = buf, *oob_buf = chip->oob_poi;

 for (cw = 0; cw < ecc->steps; cw++) {
  ret = qcom_nandc_read_cw_raw(mtd, chip, data_buf, oob_buf,
          page, cw);
  if (ret)
   return ret;

  data_buf += host->cw_data;
  oob_buf += ecc->bytes;
 }

 return 0;
}
