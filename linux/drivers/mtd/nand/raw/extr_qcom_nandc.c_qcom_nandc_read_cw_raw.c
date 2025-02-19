
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qcom_nand_host {int use_ecc; int cw_size; int bbm_size; int ecc_bytes_hw; int spare_bytes; int cw_data; } ;
struct qcom_nand_controller {int dev; TYPE_1__* props; } ;
struct nand_ecc_ctrl {int steps; int size; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 int FLASH_BUF_ACC ;
 int check_flash_errors (struct qcom_nand_host*,int) ;
 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int config_nand_cw_read (struct qcom_nand_controller*,int) ;
 int config_nand_page_read (struct qcom_nand_controller*) ;
 int dev_err (int ,char*,int) ;
 int free_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 int nandc_set_read_loc (struct qcom_nand_controller*,int,int,int,int) ;
 int read_data_dma (struct qcom_nand_controller*,int,int *,int,int ) ;
 int set_address (struct qcom_nand_host*,int,int) ;
 int submit_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;
 int update_rw_regs (struct qcom_nand_host*,int,int) ;

__attribute__((used)) static int
qcom_nandc_read_cw_raw(struct mtd_info *mtd, struct nand_chip *chip,
         u8 *data_buf, u8 *oob_buf, int page, int cw)
{
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int data_size1, data_size2, oob_size1, oob_size2;
 int ret, reg_off = FLASH_BUF_ACC, read_loc = 0;

 nand_read_page_op(chip, page, 0, ((void*)0), 0);
 host->use_ecc = 0;

 clear_bam_transaction(nandc);
 set_address(host, host->cw_size * cw, page);
 update_rw_regs(host, 1, 1);
 config_nand_page_read(nandc);

 data_size1 = mtd->writesize - host->cw_size * (ecc->steps - 1);
 oob_size1 = host->bbm_size;

 if (cw == (ecc->steps - 1)) {
  data_size2 = ecc->size - data_size1 -
        ((ecc->steps - 1) * 4);
  oob_size2 = (ecc->steps * 4) + host->ecc_bytes_hw +
       host->spare_bytes;
 } else {
  data_size2 = host->cw_data - data_size1;
  oob_size2 = host->ecc_bytes_hw + host->spare_bytes;
 }

 if (nandc->props->is_bam) {
  nandc_set_read_loc(nandc, 0, read_loc, data_size1, 0);
  read_loc += data_size1;

  nandc_set_read_loc(nandc, 1, read_loc, oob_size1, 0);
  read_loc += oob_size1;

  nandc_set_read_loc(nandc, 2, read_loc, data_size2, 0);
  read_loc += data_size2;

  nandc_set_read_loc(nandc, 3, read_loc, oob_size2, 1);
 }

 config_nand_cw_read(nandc, 0);

 read_data_dma(nandc, reg_off, data_buf, data_size1, 0);
 reg_off += data_size1;

 read_data_dma(nandc, reg_off, oob_buf, oob_size1, 0);
 reg_off += oob_size1;

 read_data_dma(nandc, reg_off, data_buf + data_size1, data_size2, 0);
 reg_off += data_size2;

 read_data_dma(nandc, reg_off, oob_buf + oob_size1, oob_size2, 0);

 ret = submit_descs(nandc);
 free_descs(nandc);
 if (ret) {
  dev_err(nandc->dev, "failure to read raw cw %d\n", cw);
  return ret;
 }

 return check_flash_errors(host, 1);
}
