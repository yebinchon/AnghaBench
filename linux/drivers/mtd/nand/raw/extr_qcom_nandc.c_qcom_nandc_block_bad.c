
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_host {int use_ecc; int cw_size; } ;
struct qcom_nand_controller {int* data_buffer; int dev; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {int page_shift; int pagemask; int options; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;
typedef int loff_t ;


 int NAND_BUSWIDTH_16 ;
 scalar_t__ check_flash_errors (struct qcom_nand_host*,int) ;
 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int copy_last_cw (struct qcom_nand_host*,int) ;
 int dev_warn (int ,char*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;

__attribute__((used)) static int qcom_nandc_block_bad(struct nand_chip *chip, loff_t ofs)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 int page, ret, bbpos, bad = 0;

 page = (int)(ofs >> chip->page_shift) & chip->pagemask;







 host->use_ecc = 0;

 clear_bam_transaction(nandc);
 ret = copy_last_cw(host, page);
 if (ret)
  goto err;

 if (check_flash_errors(host, 1)) {
  dev_warn(nandc->dev, "error when trying to read BBM\n");
  goto err;
 }

 bbpos = mtd->writesize - host->cw_size * (ecc->steps - 1);

 bad = nandc->data_buffer[bbpos] != 0xff;

 if (chip->options & NAND_BUSWIDTH_16)
  bad = bad || (nandc->data_buffer[bbpos + 1] != 0xff);
err:
 return bad;
}
