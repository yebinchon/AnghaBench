
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct qcom_nand_host {int cw_data; int cw_size; scalar_t__ use_ecc; struct nand_chip chip; } ;
struct qcom_nand_controller {int dev; int data_buffer; } ;


 int FLASH_BUF_ACC ;
 int clear_read_regs (struct qcom_nand_controller*) ;
 int config_nand_single_cw_page_read (struct qcom_nand_controller*,scalar_t__) ;
 int dev_err (int ,char*) ;
 int free_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int memset (int ,int,int) ;
 int read_data_dma (struct qcom_nand_controller*,int ,int ,int,int ) ;
 int set_address (struct qcom_nand_host*,int,int) ;
 int submit_descs (struct qcom_nand_controller*) ;
 int update_rw_regs (struct qcom_nand_host*,int,int) ;

__attribute__((used)) static int copy_last_cw(struct qcom_nand_host *host, int page)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int size;
 int ret;

 clear_read_regs(nandc);

 size = host->use_ecc ? host->cw_data : host->cw_size;


 memset(nandc->data_buffer, 0xff, size);

 set_address(host, host->cw_size * (ecc->steps - 1), page);
 update_rw_regs(host, 1, 1);

 config_nand_single_cw_page_read(nandc, host->use_ecc);

 read_data_dma(nandc, FLASH_BUF_ACC, nandc->data_buffer, size, 0);

 ret = submit_descs(nandc);
 if (ret)
  dev_err(nandc->dev, "failed to copy last codeword\n");

 free_descs(nandc);

 return ret;
}
