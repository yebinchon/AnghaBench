
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_host {int cw_size; int use_ecc; } ;
struct qcom_nand_controller {int dev; int data_buffer; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {int page_shift; int pagemask; struct nand_ecc_ctrl ecc; } ;
typedef int loff_t ;


 int EIO ;
 int FLASH_BUF_ACC ;
 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int clear_read_regs (struct qcom_nand_controller*) ;
 int config_nand_cw_write (struct qcom_nand_controller*) ;
 int config_nand_page_write (struct qcom_nand_controller*) ;
 int dev_err (int ,char*) ;
 int free_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int memset (int ,int,int) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 int set_address (struct qcom_nand_host*,int,int) ;
 int submit_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;
 int update_rw_regs (struct qcom_nand_host*,int,int) ;
 int write_data_dma (struct qcom_nand_controller*,int ,int ,int,int ) ;

__attribute__((used)) static int qcom_nandc_block_markbad(struct nand_chip *chip, loff_t ofs)
{
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int page, ret;

 clear_read_regs(nandc);
 clear_bam_transaction(nandc);






 memset(nandc->data_buffer, 0x00, host->cw_size);

 page = (int)(ofs >> chip->page_shift) & chip->pagemask;


 host->use_ecc = 0;
 set_address(host, host->cw_size * (ecc->steps - 1), page);
 update_rw_regs(host, 1, 0);

 config_nand_page_write(nandc);
 write_data_dma(nandc, FLASH_BUF_ACC,
         nandc->data_buffer, host->cw_size, 0);
 config_nand_cw_write(nandc);

 ret = submit_descs(nandc);

 free_descs(nandc);

 if (ret) {
  dev_err(nandc->dev, "failure to update BBM\n");
  return -EIO;
 }

 return nand_prog_page_end_op(chip);
}
