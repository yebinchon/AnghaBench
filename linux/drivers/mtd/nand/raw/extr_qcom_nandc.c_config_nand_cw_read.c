
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_nand_controller {TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 int NAND_BAM_NEXT_SGL ;
 int NAND_ERASED_CW_DETECT_STATUS ;
 int NAND_EXEC_CMD ;
 int NAND_FLASH_CMD ;
 int NAND_FLASH_STATUS ;
 int NAND_READ_LOCATION_0 ;
 int read_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;
 int write_reg_dma (struct qcom_nand_controller*,int ,int,int ) ;

__attribute__((used)) static void
config_nand_cw_read(struct qcom_nand_controller *nandc, bool use_ecc)
{
 if (nandc->props->is_bam)
  write_reg_dma(nandc, NAND_READ_LOCATION_0, 4,
         NAND_BAM_NEXT_SGL);

 write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
 write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

 if (use_ecc) {
  read_reg_dma(nandc, NAND_FLASH_STATUS, 2, 0);
  read_reg_dma(nandc, NAND_ERASED_CW_DETECT_STATUS, 1,
        NAND_BAM_NEXT_SGL);
 } else {
  read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);
 }
}
