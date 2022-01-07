
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {struct mmc_request* mrq; } ;
struct TYPE_2__ {scalar_t__ opcode; int flags; int error; } ;


 int EINVAL ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R4 ;
 int MMC_RSP_SPI_R4 ;
 scalar_t__ SD_IO_SEND_OP_COND ;
 int WARN_ON (int ) ;
 int goldfish_mmc_prepare_data (struct goldfish_mmc_host*,struct mmc_request*) ;
 int goldfish_mmc_start_command (struct goldfish_mmc_host*,TYPE_1__*) ;
 struct goldfish_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void goldfish_mmc_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct goldfish_mmc_host *host = mmc_priv(mmc);

 WARN_ON(host->mrq != ((void*)0));

 host->mrq = req;
 goldfish_mmc_prepare_data(host, req);
 goldfish_mmc_start_command(host, req->cmd);





 if (req->cmd->opcode == SD_IO_SEND_OP_COND &&
     req->cmd->flags == (MMC_RSP_SPI_R4 | MMC_RSP_R4 | MMC_CMD_BCR))
  req->cmd->error = -EINVAL;
}
