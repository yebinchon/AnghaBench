
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_controller {int dma_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t brcmnand_dma_irq(int irq, void *data)
{
 struct brcmnand_controller *ctrl = data;

 complete(&ctrl->dma_done);

 return IRQ_HANDLED;
}
