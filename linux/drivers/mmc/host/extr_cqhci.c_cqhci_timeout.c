
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_slot {int flags; struct mmc_request* mrq; } ;
struct cqhci_host {int recovery_halt; int lock; struct cqhci_slot* slot; } ;


 int CQHCI_EXTERNAL_TIMEOUT ;
 int cqhci_dumpregs (struct cqhci_host*) ;
 int cqhci_recovery_needed (struct mmc_host*,struct mmc_request*,int) ;
 int cqhci_tag (struct mmc_request*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_err (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool cqhci_timeout(struct mmc_host *mmc, struct mmc_request *mrq,
     bool *recovery_needed)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 int tag = cqhci_tag(mrq);
 struct cqhci_slot *slot = &cq_host->slot[tag];
 unsigned long flags;
 bool timed_out;

 spin_lock_irqsave(&cq_host->lock, flags);
 timed_out = slot->mrq == mrq;
 if (timed_out) {
  slot->flags |= CQHCI_EXTERNAL_TIMEOUT;
  cqhci_recovery_needed(mmc, mrq, 0);
  *recovery_needed = cq_host->recovery_halt;
 }
 spin_unlock_irqrestore(&cq_host->lock, flags);

 if (timed_out) {
  pr_err("%s: cqhci: timeout for tag %d\n",
         mmc_hostname(mmc), tag);
  cqhci_dumpregs(cq_host);
 }

 return timed_out;
}
