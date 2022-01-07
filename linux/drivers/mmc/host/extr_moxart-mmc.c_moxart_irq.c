
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct moxart_host {int is_removed; int lock; int * mrq; int mmc; scalar_t__ base; int dma_chan_rx; int dma_chan_tx; scalar_t__ have_dma; } ;
typedef int irqreturn_t ;


 int CARD_CHANGE ;
 int CARD_DETECT ;
 int FIFO_ORUN ;
 int FIFO_URUN ;
 int IRQ_HANDLED ;
 int MASK_INTR_PIO ;
 scalar_t__ REG_CLEAR ;
 scalar_t__ REG_INTERRUPT_MASK ;
 scalar_t__ REG_STATUS ;
 int dmaengine_terminate_all (int ) ;
 int mmc_detect_change (int ,int ) ;
 int moxart_transfer_pio (struct moxart_host*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t moxart_irq(int irq, void *devid)
{
 struct moxart_host *host = (struct moxart_host *)devid;
 u32 status;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 status = readl(host->base + REG_STATUS);
 if (status & CARD_CHANGE) {
  host->is_removed = status & CARD_DETECT;
  if (host->is_removed && host->have_dma) {
   dmaengine_terminate_all(host->dma_chan_tx);
   dmaengine_terminate_all(host->dma_chan_rx);
  }
  host->mrq = ((void*)0);
  writel(MASK_INTR_PIO, host->base + REG_CLEAR);
  writel(CARD_CHANGE, host->base + REG_INTERRUPT_MASK);
  mmc_detect_change(host->mmc, 0);
 }
 if (status & (FIFO_ORUN | FIFO_URUN) && host->mrq)
  moxart_transfer_pio(host);

 spin_unlock_irqrestore(&host->lock, flags);

 return IRQ_HANDLED;
}
