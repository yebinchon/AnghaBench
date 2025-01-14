
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_nand_controller {TYPE_1__* props; struct nandc_regs* regs; } ;
struct nandc_regs {int erased_cw_detect_cfg_clr; int erased_cw_detect_cfg_set; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 unsigned int NAND_BAM_NWD ;
 int NAND_DEV_CMD1 ;
 int NAND_DEV_CMD1_RESTORE ;
 int NAND_DEV_CMD_VLD ;
 int NAND_DEV_CMD_VLD_RESTORE ;
 int NAND_ERASED_CW_DETECT_CFG ;
 unsigned int NAND_ERASED_CW_SET ;
 int NAND_EXEC_CMD ;
 int NAND_FLASH_CMD ;
 int dev_cmd_reg_addr (struct qcom_nand_controller*,int) ;
 void* offset_to_nandc_reg (struct nandc_regs*,int) ;
 int prep_adm_dma_desc (struct qcom_nand_controller*,int,int,void*,int,int) ;
 int prep_bam_dma_desc_cmd (struct qcom_nand_controller*,int,int,void*,int,unsigned int) ;

__attribute__((used)) static int write_reg_dma(struct qcom_nand_controller *nandc, int first,
    int num_regs, unsigned int flags)
{
 bool flow_control = 0;
 struct nandc_regs *regs = nandc->regs;
 void *vaddr;

 vaddr = offset_to_nandc_reg(regs, first);

 if (first == NAND_ERASED_CW_DETECT_CFG) {
  if (flags & NAND_ERASED_CW_SET)
   vaddr = &regs->erased_cw_detect_cfg_set;
  else
   vaddr = &regs->erased_cw_detect_cfg_clr;
 }

 if (first == NAND_EXEC_CMD)
  flags |= NAND_BAM_NWD;

 if (first == NAND_DEV_CMD1_RESTORE || first == NAND_DEV_CMD1)
  first = dev_cmd_reg_addr(nandc, NAND_DEV_CMD1);

 if (first == NAND_DEV_CMD_VLD_RESTORE || first == NAND_DEV_CMD_VLD)
  first = dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD);

 if (nandc->props->is_bam)
  return prep_bam_dma_desc_cmd(nandc, 0, first, vaddr,
          num_regs, flags);

 if (first == NAND_FLASH_CMD)
  flow_control = 1;

 return prep_adm_dma_desc(nandc, 0, first, vaddr,
     num_regs * sizeof(u32), flow_control);
}
