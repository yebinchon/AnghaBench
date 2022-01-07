
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_nand_controller {int reg_read_pos; TYPE_1__* props; void* reg_read_buf; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 int NAND_DEV_CMD1 ;
 int NAND_DEV_CMD_VLD ;
 int NAND_FLASH_STATUS ;
 int NAND_READ_ID ;
 int dev_cmd_reg_addr (struct qcom_nand_controller*,int) ;
 int prep_adm_dma_desc (struct qcom_nand_controller*,int,int,void*,int,int) ;
 int prep_bam_dma_desc_cmd (struct qcom_nand_controller*,int,int,void*,int,unsigned int) ;

__attribute__((used)) static int read_reg_dma(struct qcom_nand_controller *nandc, int first,
   int num_regs, unsigned int flags)
{
 bool flow_control = 0;
 void *vaddr;

 vaddr = nandc->reg_read_buf + nandc->reg_read_pos;
 nandc->reg_read_pos += num_regs;

 if (first == NAND_DEV_CMD_VLD || first == NAND_DEV_CMD1)
  first = dev_cmd_reg_addr(nandc, first);

 if (nandc->props->is_bam)
  return prep_bam_dma_desc_cmd(nandc, 1, first, vaddr,
          num_regs, flags);

 if (first == NAND_READ_ID || first == NAND_FLASH_STATUS)
  flow_control = 1;

 return prep_adm_dma_desc(nandc, 1, first, vaddr,
     num_regs * sizeof(u32), flow_control);
}
