
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxcmci_host {int mmc; int * data; int * cmd; int * req; int lock; scalar_t__ use_sdio; int default_irq_mask; } ;
struct mmc_request {int dummy; } ;


 int INT_SDIO_IRQ_EN ;
 int MMC_REG_INT_CNTR ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int mxcmci_writel (struct mxcmci_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mxcmci_finish_request(struct mxcmci_host *host,
  struct mmc_request *req)
{
 u32 int_cntr = host->default_irq_mask;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 if (host->use_sdio)
  int_cntr |= INT_SDIO_IRQ_EN;
 mxcmci_writel(host, int_cntr, MMC_REG_INT_CNTR);
 spin_unlock_irqrestore(&host->lock, flags);

 host->req = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);

 mmc_request_done(host->mmc, req);
}
