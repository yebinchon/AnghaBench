
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {scalar_t__ enabled; } ;


 int __cqhci_disable (struct cqhci_host*) ;

int cqhci_suspend(struct mmc_host *mmc)
{
 struct cqhci_host *cq_host = mmc->cqe_private;

 if (cq_host->enabled)
  __cqhci_disable(cq_host);

 return 0;
}
