
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int nand_version; int flash_dma_offsets; } ;


 int flash_dma_regs_v1 ;
 int flash_dma_regs_v4 ;

__attribute__((used)) static void brcmnand_flash_dma_revision_init(struct brcmnand_controller *ctrl)
{

 if (ctrl->nand_version >= 0x0703)
  ctrl->flash_dma_offsets = flash_dma_regs_v4;
 else
  ctrl->flash_dma_offsets = flash_dma_regs_v1;
}
