
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int cqe_on; struct cqhci_host* cqe_private; } ;
struct cqhci_host {TYPE_1__* ops; scalar_t__ recovery_halt; int enabled; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* disable ) (struct mmc_host*,int) ;} ;


 int CQHCI_CTL ;
 int CQHCI_HALT ;
 int CQHCI_OFF_TIMEOUT ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int,int ) ;
 int ktime_add_us (int ,int ) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int stub1 (struct mmc_host*,int) ;

__attribute__((used)) static void cqhci_off(struct mmc_host *mmc)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 ktime_t timeout;
 bool timed_out;
 u32 reg;

 if (!cq_host->enabled || !mmc->cqe_on || cq_host->recovery_halt)
  return;

 if (cq_host->ops->disable)
  cq_host->ops->disable(mmc, 0);

 cqhci_writel(cq_host, CQHCI_HALT, CQHCI_CTL);

 timeout = ktime_add_us(ktime_get(), CQHCI_OFF_TIMEOUT);
 while (1) {
  timed_out = ktime_compare(ktime_get(), timeout) > 0;
  reg = cqhci_readl(cq_host, CQHCI_CTL);
  if ((reg & CQHCI_HALT) || timed_out)
   break;
 }

 if (timed_out)
  pr_err("%s: cqhci: CQE stuck on\n", mmc_hostname(mmc));
 else
  pr_debug("%s: cqhci: CQE off\n", mmc_hostname(mmc));

 mmc->cqe_on = 0;
}
