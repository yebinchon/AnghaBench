
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct brcmnand_controller {scalar_t__ flash_dma_base; scalar_t__* flash_dma_offsets; } ;
typedef enum flash_dma_reg { ____Placeholder_flash_dma_reg } flash_dma_reg ;


 int brcmnand_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void flash_dma_writel(struct brcmnand_controller *ctrl,
        enum flash_dma_reg dma_reg, u32 val)
{
 u16 offs = ctrl->flash_dma_offsets[dma_reg];

 brcmnand_writel(val, ctrl->flash_dma_base + offs);
}
