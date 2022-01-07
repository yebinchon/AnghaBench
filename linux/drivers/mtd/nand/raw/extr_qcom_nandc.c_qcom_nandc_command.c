
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_host {int use_ecc; } ;
struct qcom_nand_controller {int buf_count; int dev; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
 int WARN_ON (int) ;
 int dev_err (int ,char*,unsigned int) ;
 int erase_block (struct qcom_nand_host*,int) ;
 int free_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nandc_param (struct qcom_nand_host*) ;
 int post_command (struct qcom_nand_host*,unsigned int) ;
 int pre_command (struct qcom_nand_host*,unsigned int) ;
 int read_id (struct qcom_nand_host*,int) ;
 int reset (struct qcom_nand_host*) ;
 int set_address (struct qcom_nand_host*,int ,int) ;
 int submit_descs (struct qcom_nand_controller*) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;
 int update_rw_regs (struct qcom_nand_host*,int ,int) ;

__attribute__((used)) static void qcom_nandc_command(struct nand_chip *chip, unsigned int command,
          int column, int page_addr)
{
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 bool wait = 0;
 int ret = 0;

 pre_command(host, command);

 switch (command) {
 case 130:
  ret = reset(host);
  wait = 1;
  break;

 case 131:
  nandc->buf_count = 4;
  ret = read_id(host, column);
  wait = 1;
  break;

 case 133:
  ret = nandc_param(host);
  wait = 1;
  break;

 case 136:
  ret = erase_block(host, page_addr);
  wait = 1;
  break;

 case 132:

  WARN_ON(column != 0);

  host->use_ecc = 1;
  set_address(host, 0, page_addr);
  update_rw_regs(host, ecc->steps, 1);
  break;

 case 129:
  WARN_ON(column != 0);
  set_address(host, 0, page_addr);
  break;

 case 134:
 case 128:
 case 135:
 default:
  break;
 }

 if (ret) {
  dev_err(nandc->dev, "failure executing command %d\n",
   command);
  free_descs(nandc);
  return;
 }

 if (wait) {
  ret = submit_descs(nandc);
  if (ret)
   dev_err(nandc->dev,
    "failure submitting descs for command %d\n",
    command);
 }

 free_descs(nandc);

 post_command(host, command);
}
