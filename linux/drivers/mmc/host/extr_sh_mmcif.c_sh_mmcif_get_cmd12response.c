
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int addr; } ;
struct mmc_command {int * resp; } ;


 int MMCIF_CE_RESP_CMD12 ;
 int sh_mmcif_readl (int ,int ) ;

__attribute__((used)) static void sh_mmcif_get_cmd12response(struct sh_mmcif_host *host,
      struct mmc_command *cmd)
{
 cmd->resp[0] = sh_mmcif_readl(host->addr, MMCIF_CE_RESP_CMD12);
}
