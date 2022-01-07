
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_command {int flags; } ;


 int CMD_CFG_NO_RESP ;
 int CMD_CFG_R1B ;
 int CMD_CFG_RESP_128 ;
 int CMD_CFG_RESP_NOCRC ;
 int CMD_CFG_RESP_NUM ;
 int MMC_RSP_136 ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;

__attribute__((used)) static void meson_mmc_set_response_bits(struct mmc_command *cmd, u32 *cmd_cfg)
{
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136)
   *cmd_cfg |= CMD_CFG_RESP_128;
  *cmd_cfg |= CMD_CFG_RESP_NUM;

  if (!(cmd->flags & MMC_RSP_CRC))
   *cmd_cfg |= CMD_CFG_RESP_NOCRC;

  if (cmd->flags & MMC_RSP_BUSY)
   *cmd_cfg |= CMD_CFG_R1B;
 } else {
  *cmd_cfg |= CMD_CFG_NO_RESP;
 }
}
