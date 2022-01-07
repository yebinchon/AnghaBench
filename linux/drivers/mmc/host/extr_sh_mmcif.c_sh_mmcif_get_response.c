
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int addr; } ;
struct mmc_command {int flags; void** resp; } ;


 int MMCIF_CE_RESP0 ;
 int MMCIF_CE_RESP1 ;
 int MMCIF_CE_RESP2 ;
 int MMCIF_CE_RESP3 ;
 int MMC_RSP_136 ;
 void* sh_mmcif_readl (int ,int ) ;

__attribute__((used)) static void sh_mmcif_get_response(struct sh_mmcif_host *host,
      struct mmc_command *cmd)
{
 if (cmd->flags & MMC_RSP_136) {
  cmd->resp[0] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP3);
  cmd->resp[1] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP2);
  cmd->resp[2] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP1);
  cmd->resp[3] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP0);
 } else
  cmd->resp[0] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP0);
}
