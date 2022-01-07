
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_nand_controller {int vld; void* cmd1; TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 int BAM_MODE_EN ;
 int DM_EN ;
 int NAND_CTRL ;
 int NAND_DEV_CMD1 ;
 int NAND_DEV_CMD_VLD ;
 int NAND_DEV_CMD_VLD_VAL ;
 int NAND_FLASH_CHIP_SELECT ;
 int SFLASHC_BURST_CFG ;
 int dev_cmd_reg_addr (struct qcom_nand_controller*,int ) ;
 void* nandc_read (struct qcom_nand_controller*,int ) ;
 int nandc_write (struct qcom_nand_controller*,int ,int) ;

__attribute__((used)) static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
{
 u32 nand_ctrl;


 nandc_write(nandc, SFLASHC_BURST_CFG, 0);
 nandc_write(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD),
      NAND_DEV_CMD_VLD_VAL);


 if (nandc->props->is_bam) {
  nand_ctrl = nandc_read(nandc, NAND_CTRL);
  nandc_write(nandc, NAND_CTRL, nand_ctrl | BAM_MODE_EN);
 } else {
  nandc_write(nandc, NAND_FLASH_CHIP_SELECT, DM_EN);
 }


 nandc->cmd1 = nandc_read(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD1));
 nandc->vld = NAND_DEV_CMD_VLD_VAL;

 return 0;
}
