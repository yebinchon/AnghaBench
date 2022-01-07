
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int dummy; } ;


 int NAND_BAM_NEXT_SGL ;
 int NAND_EXEC_CMD ;
 int NAND_FLASH_CMD ;
 int NAND_FLASH_STATUS ;
 int OP_RESET_DEVICE ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nandc_set_reg (struct qcom_nand_controller*,int ,int) ;
 int read_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;
 int write_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;

__attribute__((used)) static int reset(struct qcom_nand_host *host)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);

 nandc_set_reg(nandc, NAND_FLASH_CMD, OP_RESET_DEVICE);
 nandc_set_reg(nandc, NAND_EXEC_CMD, 1);

 write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
 write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

 read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);

 return 0;
}
