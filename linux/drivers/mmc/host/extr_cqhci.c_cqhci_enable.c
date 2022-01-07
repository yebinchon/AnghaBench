
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {struct cqhci_host* cqe_private; } ;
struct mmc_card {int rca; } ;
struct cqhci_host {int enabled; int rca; } ;


 int __cqhci_enable (struct cqhci_host*) ;
 int cqhci_dumpregs (struct cqhci_host*) ;
 int cqhci_host_alloc_tdl (struct cqhci_host*) ;

__attribute__((used)) static int cqhci_enable(struct mmc_host *mmc, struct mmc_card *card)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 int err;

 if (cq_host->enabled)
  return 0;

 cq_host->rca = card->rca;

 err = cqhci_host_alloc_tdl(cq_host);
 if (err)
  return err;

 __cqhci_enable(cq_host);

 cq_host->enabled = 1;




 return 0;
}
