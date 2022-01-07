
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
struct meson_host {int mmc; int * cmd; } ;


 struct meson_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void meson_mmc_request_done(struct mmc_host *mmc,
       struct mmc_request *mrq)
{
 struct meson_host *host = mmc_priv(mmc);

 host->cmd = ((void*)0);
 mmc_request_done(host->mmc, mrq);
}
