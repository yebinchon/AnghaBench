
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int cmd_mutex; struct mmc_request* mrq; } ;
struct TYPE_2__ {int error; } ;


 int ENOMEDIUM ;
 scalar_t__ alcor_get_cd (struct mmc_host*) ;
 int alcor_request_complete (struct alcor_sdmmc_host*,int) ;
 int alcor_send_cmd (struct alcor_sdmmc_host*,TYPE_1__*,int) ;
 struct alcor_sdmmc_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void alcor_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct alcor_sdmmc_host *host = mmc_priv(mmc);

 mutex_lock(&host->cmd_mutex);

 host->mrq = mrq;


 if (alcor_get_cd(mmc))
  alcor_send_cmd(host, mrq->cmd, 1);
 else {
  mrq->cmd->error = -ENOMEDIUM;
  alcor_request_complete(host, 1);
 }

 mutex_unlock(&host->cmd_mutex);
}
