
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int flash_dma_base; } ;



__attribute__((used)) static inline bool has_flash_dma(struct brcmnand_controller *ctrl)
{
 return ctrl->flash_dma_base;
}
