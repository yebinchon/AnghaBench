
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int mmc; int * cmd; int * mrq; int data; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;


 int BUG_ON (int ) ;
 scalar_t__ MMCICOMMAND ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
mmci_request_end(struct mmci_host *host, struct mmc_request *mrq)
{
 writel(0, host->base + MMCICOMMAND);

 BUG_ON(host->data);

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);

 mmc_request_done(host->mmc, mrq);
}
