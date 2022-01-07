
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hsmmc_host {int flags; int irq_lock; int base; scalar_t__ use_dma; } ;
struct mmc_command {scalar_t__ opcode; } ;


 int BRR_EN ;
 int BWR_EN ;
 int CIRQ_EN ;
 int DTO_EN ;
 int HSMMC_SDIO_IRQ_ENABLED ;
 int IE ;
 int INT_EN_MASK ;
 int ISE ;
 scalar_t__ MMC_ERASE ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int STAT ;
 int STAT_CLEAR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_enable_irq(struct omap_hsmmc_host *host,
      struct mmc_command *cmd)
{
 u32 irq_mask = INT_EN_MASK;
 unsigned long flags;

 if (host->use_dma)
  irq_mask &= ~(BRR_EN | BWR_EN);


 if (cmd->opcode == MMC_ERASE)
  irq_mask &= ~DTO_EN;

 spin_lock_irqsave(&host->irq_lock, flags);
 OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
 OMAP_HSMMC_WRITE(host->base, ISE, irq_mask);


 if (host->flags & HSMMC_SDIO_IRQ_ENABLED)
  irq_mask |= CIRQ_EN;
 OMAP_HSMMC_WRITE(host->base, IE, irq_mask);
 spin_unlock_irqrestore(&host->irq_lock, flags);
}
