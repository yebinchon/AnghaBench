
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int dev; } ;
struct nand_chip {int dummy; } ;


 int dev_warn (int ,char*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;

__attribute__((used)) static void qcom_nandc_select_chip(struct nand_chip *chip, int chipnr)
{
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);

 if (chipnr <= 0)
  return;

 dev_warn(nandc->dev, "invalid chip select\n");
}
