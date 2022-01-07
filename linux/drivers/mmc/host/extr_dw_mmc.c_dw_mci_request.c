
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct dw_mci_slot {int mrq; struct dw_mci* host; } ;
struct dw_mci {int lock; } ;
struct TYPE_2__ {int error; } ;


 int ENOMEDIUM ;
 int WARN_ON (int ) ;
 int dw_mci_get_cd (struct mmc_host*) ;
 int dw_mci_queue_request (struct dw_mci*,struct dw_mci_slot*,struct mmc_request*) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void dw_mci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct dw_mci *host = slot->host;

 WARN_ON(slot->mrq);







 if (!dw_mci_get_cd(mmc)) {
  mrq->cmd->error = -ENOMEDIUM;
  mmc_request_done(mmc, mrq);
  return;
 }

 spin_lock_bh(&host->lock);

 dw_mci_queue_request(host, slot, mrq);

 spin_unlock_bh(&host->lock);
}
