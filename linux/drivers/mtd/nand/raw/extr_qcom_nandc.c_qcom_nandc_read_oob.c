
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_host {int use_ecc; } ;
struct qcom_nand_controller {int dummy; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {int oob_poi; struct nand_ecc_ctrl ecc; } ;


 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int clear_read_regs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int read_page_ecc (struct qcom_nand_host*,int *,int ,int) ;
 int set_address (struct qcom_nand_host*,int ,int) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;
 int update_rw_regs (struct qcom_nand_host*,int ,int) ;

__attribute__((used)) static int qcom_nandc_read_oob(struct nand_chip *chip, int page)
{
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 clear_read_regs(nandc);
 clear_bam_transaction(nandc);

 host->use_ecc = 1;
 set_address(host, 0, page);
 update_rw_regs(host, ecc->steps, 1);

 return read_page_ecc(host, ((void*)0), chip->oob_poi, page);
}
