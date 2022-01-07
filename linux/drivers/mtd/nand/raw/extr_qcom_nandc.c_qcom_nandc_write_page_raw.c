
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct qcom_nand_host {int use_ecc; int cw_size; int bbm_size; int ecc_bytes_hw; int spare_bytes; int cw_data; } ;
struct qcom_nand_controller {int dev; } ;
struct nand_ecc_ctrl {int steps; int size; } ;
struct nand_chip {int * oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;


 int FLASH_BUF_ACC ;
 int NAND_BAM_NO_EOT ;
 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int clear_read_regs (struct qcom_nand_controller*) ;
 int config_nand_cw_write (struct qcom_nand_controller*) ;
 int config_nand_page_write (struct qcom_nand_controller*) ;
 int dev_err (int ,char*) ;
 int free_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int submit_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;
 int update_rw_regs (struct qcom_nand_host*,int,int) ;
 int write_data_dma (struct qcom_nand_controller*,int,int *,int,int ) ;

__attribute__((used)) static int qcom_nandc_write_page_raw(struct nand_chip *chip,
         const uint8_t *buf, int oob_required,
         int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 u8 *data_buf, *oob_buf;
 int i, ret;

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 clear_read_regs(nandc);
 clear_bam_transaction(nandc);

 data_buf = (u8 *)buf;
 oob_buf = chip->oob_poi;

 host->use_ecc = 0;
 update_rw_regs(host, ecc->steps, 0);
 config_nand_page_write(nandc);

 for (i = 0; i < ecc->steps; i++) {
  int data_size1, data_size2, oob_size1, oob_size2;
  int reg_off = FLASH_BUF_ACC;

  data_size1 = mtd->writesize - host->cw_size * (ecc->steps - 1);
  oob_size1 = host->bbm_size;

  if (i == (ecc->steps - 1)) {
   data_size2 = ecc->size - data_size1 -
         ((ecc->steps - 1) << 2);
   oob_size2 = (ecc->steps << 2) + host->ecc_bytes_hw +
        host->spare_bytes;
  } else {
   data_size2 = host->cw_data - data_size1;
   oob_size2 = host->ecc_bytes_hw + host->spare_bytes;
  }

  write_data_dma(nandc, reg_off, data_buf, data_size1,
          NAND_BAM_NO_EOT);
  reg_off += data_size1;
  data_buf += data_size1;

  write_data_dma(nandc, reg_off, oob_buf, oob_size1,
          NAND_BAM_NO_EOT);
  reg_off += oob_size1;
  oob_buf += oob_size1;

  write_data_dma(nandc, reg_off, data_buf, data_size2,
          NAND_BAM_NO_EOT);
  reg_off += data_size2;
  data_buf += data_size2;

  write_data_dma(nandc, reg_off, oob_buf, oob_size2, 0);
  oob_buf += oob_size2;

  config_nand_cw_write(nandc);
 }

 ret = submit_descs(nandc);
 if (ret)
  dev_err(nandc->dev, "failure to write raw page\n");

 free_descs(nandc);

 if (!ret)
  ret = nand_prog_page_end_op(chip);

 return ret;
}
