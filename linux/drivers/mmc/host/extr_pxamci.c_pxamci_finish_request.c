
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {int mmc; int * data; int * cmd; int * mrq; } ;
struct mmc_request {int dummy; } ;


 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void pxamci_finish_request(struct pxamci_host *host, struct mmc_request *mrq)
{
 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);
 mmc_request_done(host->mmc, mrq);
}
