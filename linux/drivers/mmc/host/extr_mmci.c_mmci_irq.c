
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {int mask1_reg; int lock; TYPE_1__* variant; int data; int cmd; int mmc; scalar_t__ base; scalar_t__ singleirq; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq_pio_mask; int busy_detect_mask; int busy_detect_flag; scalar_t__ reversed_irq_handling; scalar_t__ busy_detect; } ;


 int IRQ_RETVAL (int) ;
 scalar_t__ MMCICLEAR ;
 scalar_t__ MMCIMASK0 ;
 scalar_t__ MMCISTATUS ;
 int dev_dbg (int ,char*,int) ;
 int mmc_dev (int ) ;
 int mmci_cmd_irq (struct mmci_host*,int ,int) ;
 int mmci_data_irq (struct mmci_host*,int ,int) ;
 int mmci_pio_irq (int,void*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mmci_irq(int irq, void *dev_id)
{
 struct mmci_host *host = dev_id;
 u32 status;
 int ret = 0;

 spin_lock(&host->lock);

 do {
  status = readl(host->base + MMCISTATUS);

  if (host->singleirq) {
   if (status & host->mask1_reg)
    mmci_pio_irq(irq, dev_id);

   status &= ~host->variant->irq_pio_mask;
  }





  status &= readl(host->base + MMCIMASK0);
  if (host->variant->busy_detect)
   writel(status & ~host->variant->busy_detect_mask,
          host->base + MMCICLEAR);
  else
   writel(status, host->base + MMCICLEAR);

  dev_dbg(mmc_dev(host->mmc), "irq0 (data+cmd) %08x\n", status);

  if (host->variant->reversed_irq_handling) {
   mmci_data_irq(host, host->data, status);
   mmci_cmd_irq(host, host->cmd, status);
  } else {
   mmci_cmd_irq(host, host->cmd, status);
   mmci_data_irq(host, host->data, status);
  }





  if (host->variant->busy_detect_flag)
   status &= ~host->variant->busy_detect_flag;

  ret = 1;
 } while (status);

 spin_unlock(&host->lock);

 return IRQ_RETVAL(ret);
}
