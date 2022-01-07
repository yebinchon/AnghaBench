
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct brcmnand_controller {scalar_t__ flash_dma_base; scalar_t__* flash_dma_offsets; } ;
typedef enum flash_dma_reg { ____Placeholder_flash_dma_reg } flash_dma_reg ;


 int brcmnand_readl (scalar_t__) ;

__attribute__((used)) static inline u32 flash_dma_readl(struct brcmnand_controller *ctrl,
      enum flash_dma_reg dma_reg)
{
 u16 offs = ctrl->flash_dma_offsets[dma_reg];

 return brcmnand_readl(ctrl->flash_dma_base + offs);
}
