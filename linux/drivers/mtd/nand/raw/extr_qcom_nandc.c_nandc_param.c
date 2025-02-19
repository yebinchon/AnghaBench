
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int vld; int cmd1; int buf_count; int data_buffer; } ;


 int BAD_BLOCK_BYTE_NUM ;
 int BAD_BLOCK_IN_SPARE_AREA ;
 int CS_ACTIVE_BSY ;
 int CW_PER_PAGE ;
 int DEV0_CFG1_ECC_DISABLE ;
 int ECC_CFG_ECC_DISABLE ;
 int FLASH_BUF_ACC ;
 int LAST_PAGE ;
 int NAND_ADDR0 ;
 int NAND_ADDR1 ;
 int NAND_BAM_NEXT_SGL ;
 int NAND_CMD_PARAM ;
 int NAND_DEV0_CFG0 ;
 int NAND_DEV0_CFG1 ;
 int NAND_DEV_CMD1 ;
 int NAND_DEV_CMD1_RESTORE ;
 int NAND_DEV_CMD_VLD ;
 int NAND_DEV_CMD_VLD_RESTORE ;
 int NAND_EBI2_ECC_BUF_CFG ;
 int NAND_EXEC_CMD ;
 int NAND_FLASH_CMD ;
 int NAND_RECOVERY_CYCLES ;
 int NUM_ADDR_CYCLES ;
 int OP_PAGE_READ ;
 int PAGE_ACC ;
 int READ_ADDR ;
 int READ_START_VLD ;
 int SPARE_SIZE_BYTES ;
 int UD_SIZE_BYTES ;
 int WIDE_FLASH ;
 int WR_RD_BSY_GAP ;
 int config_nand_single_cw_page_read (struct qcom_nand_controller*,int) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int memset (int ,int,int) ;
 int nandc_set_read_loc (struct qcom_nand_controller*,int ,int ,int,int) ;
 int nandc_set_reg (struct qcom_nand_controller*,int ,int) ;
 int read_data_dma (struct qcom_nand_controller*,int ,int ,int,int ) ;
 int write_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;

__attribute__((used)) static int nandc_param(struct qcom_nand_host *host)
{
 struct nand_chip *chip = &host->chip;
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);






 nandc_set_reg(nandc, NAND_FLASH_CMD, OP_PAGE_READ | PAGE_ACC | LAST_PAGE);
 nandc_set_reg(nandc, NAND_ADDR0, 0);
 nandc_set_reg(nandc, NAND_ADDR1, 0);
 nandc_set_reg(nandc, NAND_DEV0_CFG0, 0 << CW_PER_PAGE
     | 512 << UD_SIZE_BYTES
     | 5 << NUM_ADDR_CYCLES
     | 0 << SPARE_SIZE_BYTES);
 nandc_set_reg(nandc, NAND_DEV0_CFG1, 7 << NAND_RECOVERY_CYCLES
     | 0 << CS_ACTIVE_BSY
     | 17 << BAD_BLOCK_BYTE_NUM
     | 1 << BAD_BLOCK_IN_SPARE_AREA
     | 2 << WR_RD_BSY_GAP
     | 0 << WIDE_FLASH
     | 1 << DEV0_CFG1_ECC_DISABLE);
 nandc_set_reg(nandc, NAND_EBI2_ECC_BUF_CFG, 1 << ECC_CFG_ECC_DISABLE);


 nandc_set_reg(nandc, NAND_DEV_CMD_VLD,
        (nandc->vld & ~READ_START_VLD));
 nandc_set_reg(nandc, NAND_DEV_CMD1,
        (nandc->cmd1 & ~(0xFF << READ_ADDR))
        | NAND_CMD_PARAM << READ_ADDR);

 nandc_set_reg(nandc, NAND_EXEC_CMD, 1);

 nandc_set_reg(nandc, NAND_DEV_CMD1_RESTORE, nandc->cmd1);
 nandc_set_reg(nandc, NAND_DEV_CMD_VLD_RESTORE, nandc->vld);
 nandc_set_read_loc(nandc, 0, 0, 512, 1);

 write_reg_dma(nandc, NAND_DEV_CMD_VLD, 1, 0);
 write_reg_dma(nandc, NAND_DEV_CMD1, 1, NAND_BAM_NEXT_SGL);

 nandc->buf_count = 512;
 memset(nandc->data_buffer, 0xff, nandc->buf_count);

 config_nand_single_cw_page_read(nandc, 0);

 read_data_dma(nandc, FLASH_BUF_ACC, nandc->data_buffer,
        nandc->buf_count, 0);


 write_reg_dma(nandc, NAND_DEV_CMD1_RESTORE, 1, 0);
 write_reg_dma(nandc, NAND_DEV_CMD_VLD_RESTORE, 1, NAND_BAM_NEXT_SGL);

 return 0;
}
