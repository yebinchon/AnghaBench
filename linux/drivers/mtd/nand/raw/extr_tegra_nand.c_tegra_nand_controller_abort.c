
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_nand_controller {int irq; int dma_complete; int command_complete; scalar_t__ regs; } ;


 scalar_t__ COMMAND ;
 scalar_t__ DMA_MST_CTRL ;
 scalar_t__ ISR ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int readl_relaxed (scalar_t__) ;
 int reinit_completion (int *) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void tegra_nand_controller_abort(struct tegra_nand_controller *ctrl)
{
 u32 isr, dma;

 disable_irq(ctrl->irq);


 writel_relaxed(0, ctrl->regs + DMA_MST_CTRL);
 writel_relaxed(0, ctrl->regs + COMMAND);


 isr = readl_relaxed(ctrl->regs + ISR);
 writel_relaxed(isr, ctrl->regs + ISR);
 dma = readl_relaxed(ctrl->regs + DMA_MST_CTRL);
 writel_relaxed(dma, ctrl->regs + DMA_MST_CTRL);

 reinit_completion(&ctrl->command_complete);
 reinit_completion(&ctrl->dma_complete);

 enable_irq(ctrl->irq);
}
