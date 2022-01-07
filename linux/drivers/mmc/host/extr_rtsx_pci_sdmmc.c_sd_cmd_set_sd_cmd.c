
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct mmc_command {int opcode; int arg; } ;


 int SD_CMD0 ;
 int SD_CMD1 ;
 int SD_CMD_START ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_write_be32 (struct rtsx_pcr*,int ,int ) ;

__attribute__((used)) static void sd_cmd_set_sd_cmd(struct rtsx_pcr *pcr, struct mmc_command *cmd)
{
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_CMD0, 0xFF,
  SD_CMD_START | cmd->opcode);
 rtsx_pci_write_be32(pcr, SD_CMD1, cmd->arg);
}
