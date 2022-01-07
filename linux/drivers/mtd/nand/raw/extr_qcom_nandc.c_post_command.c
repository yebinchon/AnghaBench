
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int buf_count; int reg_read_buf; int data_buffer; } ;





 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int memcpy (int ,int ,int ) ;
 int nandc_read_buffer_sync (struct qcom_nand_controller*,int) ;
 int parse_erase_write_errors (struct qcom_nand_host*,int) ;

__attribute__((used)) static void post_command(struct qcom_nand_host *host, int command)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);

 switch (command) {
 case 128:
  nandc_read_buffer_sync(nandc, 1);
  memcpy(nandc->data_buffer, nandc->reg_read_buf,
         nandc->buf_count);
  break;
 case 129:
 case 130:
  parse_erase_write_errors(host, command);
  break;
 default:
  break;
 }
}
