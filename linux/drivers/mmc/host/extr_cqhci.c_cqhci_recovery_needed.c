
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int (* recovery_notifier ) (struct mmc_request*) ;} ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int recovery_halt; int wait_queue; } ;


 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct mmc_request*) ;
 int wake_up (int *) ;

__attribute__((used)) static void cqhci_recovery_needed(struct mmc_host *mmc, struct mmc_request *mrq,
      bool notify)
{
 struct cqhci_host *cq_host = mmc->cqe_private;

 if (!cq_host->recovery_halt) {
  cq_host->recovery_halt = 1;
  pr_debug("%s: cqhci: recovery needed\n", mmc_hostname(mmc));
  wake_up(&cq_host->wait_queue);
  if (notify && mrq->recovery_notifier)
   mrq->recovery_notifier(mrq);
 }
}
