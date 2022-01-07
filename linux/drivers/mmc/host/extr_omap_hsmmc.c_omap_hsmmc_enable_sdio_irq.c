
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hsmmc_host {int irq_lock; int base; int req_in_progress; int flags; } ;
struct mmc_host {int dummy; } ;


 int CIRQ_EN ;
 int CLKEXTFREE ;
 int CON ;
 int CTPL ;
 int HSMMC_SDIO_IRQ_ENABLED ;
 int IE ;
 int ISE ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 u32 irq_mask, con;
 unsigned long flags;

 spin_lock_irqsave(&host->irq_lock, flags);

 con = OMAP_HSMMC_READ(host->base, CON);
 irq_mask = OMAP_HSMMC_READ(host->base, ISE);
 if (enable) {
  host->flags |= HSMMC_SDIO_IRQ_ENABLED;
  irq_mask |= CIRQ_EN;
  con |= CTPL | CLKEXTFREE;
 } else {
  host->flags &= ~HSMMC_SDIO_IRQ_ENABLED;
  irq_mask &= ~CIRQ_EN;
  con &= ~(CTPL | CLKEXTFREE);
 }
 OMAP_HSMMC_WRITE(host->base, CON, con);
 OMAP_HSMMC_WRITE(host->base, IE, irq_mask);





 if (!host->req_in_progress || !enable)
  OMAP_HSMMC_WRITE(host->base, ISE, irq_mask);


 OMAP_HSMMC_READ(host->base, IE);

 spin_unlock_irqrestore(&host->irq_lock, flags);
}
