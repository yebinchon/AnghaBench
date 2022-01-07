
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; struct mmc_data* data; } ;
struct mmc_data {void* error; scalar_t__ bytes_xfered; } ;
struct cqhci_slot {int flags; struct mmc_request* mrq; } ;
struct cqhci_host {int qcnt; int mmc; struct cqhci_slot* slot; } ;
struct TYPE_2__ {void* error; } ;


 void* cqhci_error_from_flags (int ) ;
 int mmc_cqe_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void cqhci_recover_mrq(struct cqhci_host *cq_host, unsigned int tag)
{
 struct cqhci_slot *slot = &cq_host->slot[tag];
 struct mmc_request *mrq = slot->mrq;
 struct mmc_data *data;

 if (!mrq)
  return;

 slot->mrq = ((void*)0);

 cq_host->qcnt -= 1;

 data = mrq->data;
 if (data) {
  data->bytes_xfered = 0;
  data->error = cqhci_error_from_flags(slot->flags);
 } else {
  mrq->cmd->error = cqhci_error_from_flags(slot->flags);
 }

 mmc_cqe_request_done(cq_host->mmc, mrq);
}
