
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_davinci_host {scalar_t__ do_dma; int mmc; scalar_t__ base; } ;
struct TYPE_2__ {int error; } ;


 scalar_t__ DAVINCI_MMCST1 ;
 int ETIMEDOUT ;
 int MMCST1_BUSY ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mmc_davinci_prepare_data (struct mmc_davinci_host*,struct mmc_request*) ;
 int mmc_davinci_start_command (struct mmc_davinci_host*,TYPE_1__*) ;
 int mmc_dev (int ) ;
 struct mmc_davinci_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void mmc_davinci_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct mmc_davinci_host *host = mmc_priv(mmc);
 unsigned long timeout = jiffies + msecs_to_jiffies(900);
 u32 mmcst1 = 0;




 while (time_before(jiffies, timeout)) {
  mmcst1 = readl(host->base + DAVINCI_MMCST1);
  if (!(mmcst1 & MMCST1_BUSY))
   break;
  cpu_relax();
 }
 if (mmcst1 & MMCST1_BUSY) {
  dev_err(mmc_dev(host->mmc), "still BUSY? bad ... \n");
  req->cmd->error = -ETIMEDOUT;
  mmc_request_done(mmc, req);
  return;
 }

 host->do_dma = 0;
 mmc_davinci_prepare_data(host, req);
 mmc_davinci_start_command(host, req->cmd);
}
