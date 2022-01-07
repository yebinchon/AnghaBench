
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int dummy; } ;


 int NAND_BAM_NEXT_SGL ;
 int NAND_EXEC_CMD ;
 int NAND_FLASH_CMD ;
 int NAND_FLASH_STATUS ;
 int NAND_READ_STATUS ;
 int read_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;
 int write_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;

__attribute__((used)) static void config_nand_cw_write(struct qcom_nand_controller *nandc)
{
 write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
 write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

 read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);

 write_reg_dma(nandc, NAND_FLASH_STATUS, 1, 0);
 write_reg_dma(nandc, NAND_READ_STATUS, 1, NAND_BAM_NEXT_SGL);
}
