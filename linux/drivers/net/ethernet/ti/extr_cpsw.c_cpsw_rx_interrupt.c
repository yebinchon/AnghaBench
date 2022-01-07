
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpsw_common {int rx_irq_disabled; int napi_rx; int * irqs_table; scalar_t__ quirk_irq; TYPE_1__* wr_regs; int dma; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int rx_en; } ;


 int CPDMA_EOI_RX ;
 int IRQ_HANDLED ;
 int cpdma_ctlr_eoi (int ,int ) ;
 int disable_irq_nosync (int ) ;
 int napi_schedule (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static irqreturn_t cpsw_rx_interrupt(int irq, void *dev_id)
{
 struct cpsw_common *cpsw = dev_id;

 cpdma_ctlr_eoi(cpsw->dma, CPDMA_EOI_RX);
 writel(0, &cpsw->wr_regs->rx_en);

 if (cpsw->quirk_irq) {
  disable_irq_nosync(cpsw->irqs_table[0]);
  cpsw->rx_irq_disabled = 1;
 }

 napi_schedule(&cpsw->napi_rx);
 return IRQ_HANDLED;
}
