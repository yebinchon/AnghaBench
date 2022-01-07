
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_slot {scalar_t__ mrq; void* flags; } ;
struct cqhci_host {int lock; struct cqhci_slot* slot; scalar_t__ recovery_halt; int qcnt; } ;


 int CQHCI_TERRI ;
 int CQHCI_TERRI_C_TASK (int ) ;
 scalar_t__ CQHCI_TERRI_C_VALID (int ) ;
 int CQHCI_TERRI_D_TASK (int ) ;
 scalar_t__ CQHCI_TERRI_D_VALID (int ) ;
 int NUM_SLOTS ;
 int WARN_ONCE (int,char*,int ,int ,int,int,int ) ;
 void* cqhci_error_flags (int,int) ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_recovery_needed (struct mmc_host*,scalar_t__,int) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cqhci_error_irq(struct mmc_host *mmc, u32 status, int cmd_error,
       int data_error)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 struct cqhci_slot *slot;
 u32 terri;
 int tag;

 spin_lock(&cq_host->lock);

 terri = cqhci_readl(cq_host, CQHCI_TERRI);

 pr_debug("%s: cqhci: error IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\n",
   mmc_hostname(mmc), status, cmd_error, data_error, terri);


 if (cq_host->recovery_halt)
  goto out_unlock;

 if (!cq_host->qcnt) {
  WARN_ONCE(1, "%s: cqhci: error when idle. IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\n",
     mmc_hostname(mmc), status, cmd_error, data_error,
     terri);
  goto out_unlock;
 }

 if (CQHCI_TERRI_C_VALID(terri)) {
  tag = CQHCI_TERRI_C_TASK(terri);
  slot = &cq_host->slot[tag];
  if (slot->mrq) {
   slot->flags = cqhci_error_flags(cmd_error, data_error);
   cqhci_recovery_needed(mmc, slot->mrq, 1);
  }
 }

 if (CQHCI_TERRI_D_VALID(terri)) {
  tag = CQHCI_TERRI_D_TASK(terri);
  slot = &cq_host->slot[tag];
  if (slot->mrq) {
   slot->flags = cqhci_error_flags(data_error, cmd_error);
   cqhci_recovery_needed(mmc, slot->mrq, 1);
  }
 }

 if (!cq_host->recovery_halt) {




  for (tag = 0; tag < NUM_SLOTS; tag++) {
   slot = &cq_host->slot[tag];
   if (!slot->mrq)
    continue;
   slot->flags = cqhci_error_flags(data_error, cmd_error);
   cqhci_recovery_needed(mmc, slot->mrq, 1);
   break;
  }
 }

out_unlock:
 spin_unlock(&cq_host->lock);
}
