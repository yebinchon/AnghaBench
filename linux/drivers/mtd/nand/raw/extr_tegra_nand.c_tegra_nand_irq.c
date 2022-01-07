
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_nand_controller {int last_read_error; scalar_t__ regs; int dma_complete; int dev; int command_complete; } ;
typedef int irqreturn_t ;


 scalar_t__ DMA_MST_CTRL ;
 int DMA_MST_CTRL_IS_DONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ISR ;
 int ISR_CMD_DONE ;
 int ISR_CORRFAIL_ERR ;
 int ISR_OVR ;
 int ISR_UND ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tegra_nand_irq(int irq, void *data)
{
 struct tegra_nand_controller *ctrl = data;
 u32 isr, dma;

 isr = readl_relaxed(ctrl->regs + ISR);
 dma = readl_relaxed(ctrl->regs + DMA_MST_CTRL);
 dev_dbg(ctrl->dev, "isr %08x\n", isr);

 if (!isr && !(dma & DMA_MST_CTRL_IS_DONE))
  return IRQ_NONE;






 if (isr & ISR_CORRFAIL_ERR)
  ctrl->last_read_error = 1;

 if (isr & ISR_CMD_DONE)
  complete(&ctrl->command_complete);

 if (isr & ISR_UND)
  dev_err(ctrl->dev, "FIFO underrun\n");

 if (isr & ISR_OVR)
  dev_err(ctrl->dev, "FIFO overrun\n");


 if (dma & DMA_MST_CTRL_IS_DONE) {
  writel_relaxed(dma, ctrl->regs + DMA_MST_CTRL);
  complete(&ctrl->dma_complete);
 }


 writel_relaxed(isr, ctrl->regs + ISR);

 return IRQ_HANDLED;
}
