
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int wait_queue; } ;


 int CQHCI_CTL ;
 int CQHCI_HALT ;
 int CQHCI_IS_HAC ;
 int cqhci_halted (struct cqhci_host*) ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_set_irqs (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int ,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int pr_debug (char*,int ) ;
 int wait_event_timeout (int ,int,scalar_t__) ;

__attribute__((used)) static bool cqhci_halt(struct mmc_host *mmc, unsigned int timeout)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 bool ret;
 u32 ctl;

 if (cqhci_halted(cq_host))
  return 1;

 cqhci_set_irqs(cq_host, CQHCI_IS_HAC);

 ctl = cqhci_readl(cq_host, CQHCI_CTL);
 ctl |= CQHCI_HALT;
 cqhci_writel(cq_host, ctl, CQHCI_CTL);

 wait_event_timeout(cq_host->wait_queue, cqhci_halted(cq_host),
      msecs_to_jiffies(timeout) + 1);

 cqhci_set_irqs(cq_host, 0);

 ret = cqhci_halted(cq_host);

 if (!ret)
  pr_debug("%s: cqhci: Failed to halt\n", mmc_hostname(mmc));

 return ret;
}
