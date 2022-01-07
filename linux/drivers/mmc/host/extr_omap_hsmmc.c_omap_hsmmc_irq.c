
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int base; int mmc; scalar_t__ req_in_progress; } ;
typedef int irqreturn_t ;


 int CIRQ_EN ;
 int INT_EN_MASK ;
 int IRQ_HANDLED ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int STAT ;
 int mmc_signal_sdio_irq (int ) ;
 int omap_hsmmc_do_irq (struct omap_hsmmc_host*,int) ;

__attribute__((used)) static irqreturn_t omap_hsmmc_irq(int irq, void *dev_id)
{
 struct omap_hsmmc_host *host = dev_id;
 int status;

 status = OMAP_HSMMC_READ(host->base, STAT);
 while (status & (INT_EN_MASK | CIRQ_EN)) {
  if (host->req_in_progress)
   omap_hsmmc_do_irq(host, status);

  if (status & CIRQ_EN)
   mmc_signal_sdio_irq(host->mmc);


  status = OMAP_HSMMC_READ(host->base, STAT);
 }

 return IRQ_HANDLED;
}
