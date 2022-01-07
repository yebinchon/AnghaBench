
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqhci_host {int waiting_for_idle; int lock; scalar_t__ recovery_halt; int qcnt; } ;


 int EBUSY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool cqhci_is_idle(struct cqhci_host *cq_host, int *ret)
{
 unsigned long flags;
 bool is_idle;

 spin_lock_irqsave(&cq_host->lock, flags);
 is_idle = !cq_host->qcnt || cq_host->recovery_halt;
 *ret = cq_host->recovery_halt ? -EBUSY : 0;
 cq_host->waiting_for_idle = !is_idle;
 spin_unlock_irqrestore(&cq_host->lock, flags);

 return is_idle;
}
