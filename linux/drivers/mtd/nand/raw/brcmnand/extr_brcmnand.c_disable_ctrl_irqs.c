
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int pio_poll_mode; int irq; int dma_irq; scalar_t__ flash_dma_base; } ;


 int disable_irq (int ) ;
 scalar_t__ has_flash_dma (struct brcmnand_controller*) ;

__attribute__((used)) static inline void disable_ctrl_irqs(struct brcmnand_controller *ctrl)
{
 if (ctrl->pio_poll_mode)
  return;

 if (has_flash_dma(ctrl)) {
  ctrl->flash_dma_base = 0;
  disable_irq(ctrl->dma_irq);
 }

 disable_irq(ctrl->irq);
 ctrl->pio_poll_mode = 1;
}
