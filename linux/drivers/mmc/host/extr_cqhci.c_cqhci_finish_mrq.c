
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct mmc_data {int bytes_xfered; int blksz; int blocks; scalar_t__ error; } ;
struct cqhci_slot {struct mmc_request* mrq; int flags; } ;
struct cqhci_host {int qcnt; scalar_t__ recovery_halt; struct cqhci_slot* slot; } ;


 int CQHCI_COMPLETED ;
 int WARN_ONCE (int,char*,int ,unsigned int) ;
 int mmc_cqe_request_done (struct mmc_host*,struct mmc_request*) ;
 int mmc_hostname (struct mmc_host*) ;

__attribute__((used)) static void cqhci_finish_mrq(struct mmc_host *mmc, unsigned int tag)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 struct cqhci_slot *slot = &cq_host->slot[tag];
 struct mmc_request *mrq = slot->mrq;
 struct mmc_data *data;

 if (!mrq) {
  WARN_ONCE(1, "%s: cqhci: spurious TCN for tag %d\n",
     mmc_hostname(mmc), tag);
  return;
 }


 if (cq_host->recovery_halt) {
  slot->flags |= CQHCI_COMPLETED;
  return;
 }

 slot->mrq = ((void*)0);

 cq_host->qcnt -= 1;

 data = mrq->data;
 if (data) {
  if (data->error)
   data->bytes_xfered = 0;
  else
   data->bytes_xfered = data->blksz * data->blocks;
 }

 mmc_cqe_request_done(mmc, mrq);
}
