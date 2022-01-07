
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int error; int dev; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;
struct mmc_command {scalar_t__ data; } ;


 scalar_t__ MMC_RSP_R1B ;
 int MSDC_INT_CMDTMO ;
 int REQ_CMD_BUSY ;
 scalar_t__ SDC_STS ;
 int SDC_STS_CMDBUSY ;
 int SDC_STS_SDCBUSY ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 scalar_t__ mmc_resp_type (struct mmc_command*) ;
 int msdc_cmd_done (struct msdc_host*,int ,struct mmc_request*,struct mmc_command*) ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static inline bool msdc_cmd_is_ready(struct msdc_host *host,
  struct mmc_request *mrq, struct mmc_command *cmd)
{

 unsigned long tmo = jiffies + msecs_to_jiffies(20);

 while ((readl(host->base + SDC_STS) & SDC_STS_CMDBUSY) &&
   time_before(jiffies, tmo))
  cpu_relax();
 if (readl(host->base + SDC_STS) & SDC_STS_CMDBUSY) {
  dev_err(host->dev, "CMD bus busy detected\n");
  host->error |= REQ_CMD_BUSY;
  msdc_cmd_done(host, MSDC_INT_CMDTMO, mrq, cmd);
  return 0;
 }

 if (mmc_resp_type(cmd) == MMC_RSP_R1B || cmd->data) {
  tmo = jiffies + msecs_to_jiffies(20);

  while ((readl(host->base + SDC_STS) & SDC_STS_SDCBUSY) &&
    time_before(jiffies, tmo))
   cpu_relax();
  if (readl(host->base + SDC_STS) & SDC_STS_SDCBUSY) {
   dev_err(host->dev, "Controller busy detected\n");
   host->error |= REQ_CMD_BUSY;
   msdc_cmd_done(host, MSDC_INT_CMDTMO, mrq, cmd);
   return 0;
  }
 }
 return 1;
}
