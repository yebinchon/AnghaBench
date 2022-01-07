
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_mmc_host {int wait_dma; int int_sum; int sdio_imask; int mmc; int lock; struct mmc_request* mrq; } ;
struct mmc_request {int dummy; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 int REG_IDST ;
 int REG_IMASK ;
 int REG_MISTA ;
 int REG_RINTR ;
 int SDXC_COMMAND_DONE ;
 int SDXC_IDMAC_RECEIVE_INTERRUPT ;
 int SDXC_INTERRUPT_DONE_BIT ;
 int SDXC_INTERRUPT_ERROR_BIT ;
 int SDXC_RESP_TIMEOUT ;
 int SDXC_SDIO_INTERRUPT ;
 int dev_dbg (int ,char*,struct mmc_request*,int,int) ;
 int mmc_dev (int ) ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int mmc_signal_sdio_irq (int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sunxi_mmc_finalize_request (struct sunxi_mmc_host*) ;

__attribute__((used)) static irqreturn_t sunxi_mmc_irq(int irq, void *dev_id)
{
 struct sunxi_mmc_host *host = dev_id;
 struct mmc_request *mrq;
 u32 msk_int, idma_int;
 bool finalize = 0;
 bool sdio_int = 0;
 irqreturn_t ret = IRQ_HANDLED;

 spin_lock(&host->lock);

 idma_int = mmc_readl(host, REG_IDST);
 msk_int = mmc_readl(host, REG_MISTA);

 dev_dbg(mmc_dev(host->mmc), "irq: rq %p mi %08x idi %08x\n",
  host->mrq, msk_int, idma_int);

 mrq = host->mrq;
 if (mrq) {
  if (idma_int & SDXC_IDMAC_RECEIVE_INTERRUPT)
   host->wait_dma = 0;

  host->int_sum |= msk_int;


  if ((host->int_sum & SDXC_RESP_TIMEOUT) &&
    !(host->int_sum & SDXC_COMMAND_DONE))
   mmc_writel(host, REG_IMASK,
       host->sdio_imask | SDXC_COMMAND_DONE);

  else if (host->int_sum & SDXC_INTERRUPT_ERROR_BIT)
   finalize = 1;
  else if ((host->int_sum & SDXC_INTERRUPT_DONE_BIT) &&
    !host->wait_dma)
   finalize = 1;
 }

 if (msk_int & SDXC_SDIO_INTERRUPT)
  sdio_int = 1;

 mmc_writel(host, REG_RINTR, msk_int);
 mmc_writel(host, REG_IDST, idma_int);

 if (finalize)
  ret = sunxi_mmc_finalize_request(host);

 spin_unlock(&host->lock);

 if (finalize && ret == IRQ_HANDLED)
  mmc_request_done(host->mmc, mrq);

 if (sdio_int)
  mmc_signal_sdio_irq(host->mmc);

 return ret;
}
