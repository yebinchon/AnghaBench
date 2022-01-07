
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct dw_mci_slot {int host; } ;


 int SDMMC_STATUS_BUSY ;
 int STATUS ;
 int mci_readl (int ,int ) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int dw_mci_card_busy(struct mmc_host *mmc)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 u32 status;





 status = mci_readl(slot->host, STATUS);

 return !!(status & SDMMC_STATUS_BUSY);
}
