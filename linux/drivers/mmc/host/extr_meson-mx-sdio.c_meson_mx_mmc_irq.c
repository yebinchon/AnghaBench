
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_mx_mmc_host {int irq_lock; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MESON_MX_SDIO_IRQS ;
 int MESON_MX_SDIO_IRQS_CMD_INT ;
 scalar_t__ MESON_MX_SDIO_SEND ;
 int meson_mx_mmc_process_cmd_irq (struct meson_mx_mmc_host*,int,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t meson_mx_mmc_irq(int irq, void *data)
{
 struct meson_mx_mmc_host *host = (void *) data;
 u32 irqs, send;
 unsigned long irqflags;
 irqreturn_t ret;

 spin_lock_irqsave(&host->irq_lock, irqflags);

 irqs = readl(host->base + MESON_MX_SDIO_IRQS);
 send = readl(host->base + MESON_MX_SDIO_SEND);

 if (irqs & MESON_MX_SDIO_IRQS_CMD_INT)
  ret = meson_mx_mmc_process_cmd_irq(host, irqs, send);
 else
  ret = IRQ_HANDLED;


 writel(irqs, host->base + MESON_MX_SDIO_IRQS);

 spin_unlock_irqrestore(&host->irq_lock, irqflags);

 return ret;
}
