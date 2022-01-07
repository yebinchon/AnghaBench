
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct meson_mx_mmc_host {TYPE_1__* cmd; scalar_t__ base; int mmc; int irq_lock; } ;
struct TYPE_2__ {int error; int opcode; } ;


 int ETIMEDOUT ;
 scalar_t__ MESON_MX_SDIO_ARGU ;
 scalar_t__ MESON_MX_SDIO_IRQC ;
 int MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN ;
 scalar_t__ MESON_MX_SDIO_IRQS ;
 int cmd_timeout ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 struct meson_mx_mmc_host* from_timer (int ,struct timer_list*,int ) ;
 struct meson_mx_mmc_host* host ;
 int meson_mx_mmc_request_done (struct meson_mx_mmc_host*) ;
 int mmc_dev (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mx_mmc_timeout(struct timer_list *t)
{
 struct meson_mx_mmc_host *host = from_timer(host, t, cmd_timeout);
 unsigned long irqflags;
 u32 irqc;

 spin_lock_irqsave(&host->irq_lock, irqflags);


 irqc = readl(host->base + MESON_MX_SDIO_IRQC);
 irqc &= ~MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN;
 writel(irqc, host->base + MESON_MX_SDIO_IRQC);

 spin_unlock_irqrestore(&host->irq_lock, irqflags);





 if (!host->cmd)
  return;

 dev_dbg(mmc_dev(host->mmc),
  "Timeout on CMD%u (IRQS = 0x%08x, ARGU = 0x%08x)\n",
  host->cmd->opcode, readl(host->base + MESON_MX_SDIO_IRQS),
  readl(host->base + MESON_MX_SDIO_ARGU));

 host->cmd->error = -ETIMEDOUT;

 meson_mx_mmc_request_done(host);
}
