
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nand_chip {int options; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int dummy; } ;


 int NAND_ADDR0 ;
 int NAND_ADDR1 ;
 int NAND_BUSWIDTH_16 ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nandc_set_reg (struct qcom_nand_controller*,int ,int) ;

__attribute__((used)) static void set_address(struct qcom_nand_host *host, u16 column, int page)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);

 if (chip->options & NAND_BUSWIDTH_16)
  column >>= 1;

 nandc_set_reg(nandc, NAND_ADDR0, page << 16 | column);
 nandc_set_reg(nandc, NAND_ADDR1, page >> 16 & 0xff);
}
