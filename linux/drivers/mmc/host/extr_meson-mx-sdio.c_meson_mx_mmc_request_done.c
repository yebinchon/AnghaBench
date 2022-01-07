
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct meson_mx_mmc_host {int mmc; int * cmd; struct mmc_request* mrq; } ;


 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void meson_mx_mmc_request_done(struct meson_mx_mmc_host *host)
{
 struct mmc_request *mrq;

 mrq = host->mrq;

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);

 mmc_request_done(host->mmc, mrq);
}
