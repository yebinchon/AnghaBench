
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int wait_queue; } ;


 int cqhci_is_idle (struct cqhci_host*,int*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int cqhci_wait_for_idle(struct mmc_host *mmc)
{
 struct cqhci_host *cq_host = mmc->cqe_private;
 int ret;

 wait_event(cq_host->wait_queue, cqhci_is_idle(cq_host, &ret));

 return ret;
}
