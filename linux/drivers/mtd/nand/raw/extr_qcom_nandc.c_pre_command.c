
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct qcom_nand_host {int use_ecc; int last_command; struct nand_chip chip; } ;
struct qcom_nand_controller {scalar_t__ buf_start; scalar_t__ buf_count; } ;


 int NAND_CMD_ERASE1 ;
 int NAND_CMD_PARAM ;
 int NAND_CMD_READID ;
 int NAND_CMD_RESET ;
 int clear_bam_transaction (struct qcom_nand_controller*) ;
 int clear_read_regs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;

__attribute__((used)) static void pre_command(struct qcom_nand_host *host, int command)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);

 nandc->buf_count = 0;
 nandc->buf_start = 0;
 host->use_ecc = 0;
 host->last_command = command;

 clear_read_regs(nandc);

 if (command == NAND_CMD_RESET || command == NAND_CMD_READID ||
     command == NAND_CMD_PARAM || command == NAND_CMD_ERASE1)
  clear_bam_transaction(nandc);
}
