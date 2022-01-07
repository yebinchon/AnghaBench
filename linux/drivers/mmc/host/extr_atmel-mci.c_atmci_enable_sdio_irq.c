
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct atmel_mci_slot {int sdio_irq; struct atmel_mci* host; } ;
struct atmel_mci {int dummy; } ;


 int ATMCI_IDR ;
 int ATMCI_IER ;
 int atmci_writel (struct atmel_mci*,int ,int ) ;
 struct atmel_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void atmci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct atmel_mci_slot *slot = mmc_priv(mmc);
 struct atmel_mci *host = slot->host;

 if (enable)
  atmci_writel(host, ATMCI_IER, slot->sdio_irq);
 else
  atmci_writel(host, ATMCI_IDR, slot->sdio_irq);
}
