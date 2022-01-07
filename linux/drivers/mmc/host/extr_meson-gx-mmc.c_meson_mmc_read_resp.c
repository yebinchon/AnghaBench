
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_command {int flags; void** resp; } ;
struct meson_host {scalar_t__ regs; } ;


 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 scalar_t__ SD_EMMC_CMD_RSP ;
 scalar_t__ SD_EMMC_CMD_RSP1 ;
 scalar_t__ SD_EMMC_CMD_RSP2 ;
 scalar_t__ SD_EMMC_CMD_RSP3 ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 void* readl (scalar_t__) ;

__attribute__((used)) static void meson_mmc_read_resp(struct mmc_host *mmc, struct mmc_command *cmd)
{
 struct meson_host *host = mmc_priv(mmc);

 if (cmd->flags & MMC_RSP_136) {
  cmd->resp[0] = readl(host->regs + SD_EMMC_CMD_RSP3);
  cmd->resp[1] = readl(host->regs + SD_EMMC_CMD_RSP2);
  cmd->resp[2] = readl(host->regs + SD_EMMC_CMD_RSP1);
  cmd->resp[3] = readl(host->regs + SD_EMMC_CMD_RSP);
 } else if (cmd->flags & MMC_RSP_PRESENT) {
  cmd->resp[0] = readl(host->regs + SD_EMMC_CMD_RSP);
 }
}
