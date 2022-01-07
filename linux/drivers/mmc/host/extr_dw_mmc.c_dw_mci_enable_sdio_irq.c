
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int dev; } ;


 int __dw_mci_enable_sdio_irq (struct dw_mci_slot*,int) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static void dw_mci_enable_sdio_irq(struct mmc_host *mmc, int enb)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct dw_mci *host = slot->host;

 __dw_mci_enable_sdio_irq(slot, enb);


 if (enb)
  pm_runtime_get_noresume(host->dev);
 else
  pm_runtime_put_noidle(host->dev);
}
