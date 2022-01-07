
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_command {int arg; } ;
struct dw_mci {int dev; struct mmc_command* cmd; } ;


 int CMD ;
 int CMDARG ;
 int SDMMC_CMD_RESP_EXP ;
 int SDMMC_CMD_START ;
 int dev_vdbg (int ,char*,int,int) ;
 int dw_mci_set_cto (struct dw_mci*) ;
 int dw_mci_wait_while_busy (struct dw_mci*,int) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void dw_mci_start_command(struct dw_mci *host,
     struct mmc_command *cmd, u32 cmd_flags)
{
 host->cmd = cmd;
 dev_vdbg(host->dev,
   "start command: ARGR=0x%08x CMDR=0x%08x\n",
   cmd->arg, cmd_flags);

 mci_writel(host, CMDARG, cmd->arg);
 wmb();
 dw_mci_wait_while_busy(host, cmd_flags);

 mci_writel(host, CMD, cmd_flags | SDMMC_CMD_START);


 if (cmd_flags & SDMMC_CMD_RESP_EXP)
  dw_mci_set_cto(host);
}
