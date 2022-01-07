
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct dw_mci_slot {int dummy; } ;


 int __dw_mci_enable_sdio_irq (struct dw_mci_slot*,int) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void dw_mci_ack_sdio_irq(struct mmc_host *mmc)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);

 __dw_mci_enable_sdio_irq(slot, 1);
}
