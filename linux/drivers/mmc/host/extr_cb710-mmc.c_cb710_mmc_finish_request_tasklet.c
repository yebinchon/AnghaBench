
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_mmc_reader {struct mmc_request* mrq; } ;


 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;

__attribute__((used)) static void cb710_mmc_finish_request_tasklet(unsigned long data)
{
 struct mmc_host *mmc = (void *)data;
 struct cb710_mmc_reader *reader = mmc_priv(mmc);
 struct mmc_request *mrq = reader->mrq;

 reader->mrq = ((void*)0);
 mmc_request_done(mmc, mrq);
}
