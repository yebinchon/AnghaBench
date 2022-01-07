
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int arg; int flags; TYPE_1__* data; int error; } ;
struct dw_mci_slot {int id; int flags; struct dw_mci* host; } ;
struct dw_mci {scalar_t__ state; } ;
struct TYPE_2__ {int flags; } ;


 int CLKENA ;
 int DW_MMC_CARD_NO_USE_HOLD ;
 int EINPROGRESS ;
 int MMC_DATA_WRITE ;
 scalar_t__ MMC_GO_IDLE_STATE ;
 scalar_t__ MMC_GO_INACTIVE_STATE ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 scalar_t__ MMC_SEND_STATUS ;
 scalar_t__ MMC_STOP_TRANSMISSION ;
 int SDIO_CCCR_ABORT ;
 int SDMMC_CLKEN_LOW_PWR ;
 int SDMMC_CMD_DAT_EXP ;
 int SDMMC_CMD_DAT_WR ;
 int SDMMC_CMD_PRV_DAT_WAIT ;
 int SDMMC_CMD_RESP_CRC ;
 int SDMMC_CMD_RESP_EXP ;
 int SDMMC_CMD_RESP_LONG ;
 int SDMMC_CMD_STOP ;
 int SDMMC_CMD_UPD_CLK ;
 int SDMMC_CMD_USE_HOLD_REG ;
 int SDMMC_CMD_VOLT_SWITCH ;
 scalar_t__ SD_IO_RW_DIRECT ;
 scalar_t__ SD_SWITCH_VOLTAGE ;
 scalar_t__ STATE_SENDING_CMD ;
 scalar_t__ STATE_SENDING_CMD11 ;
 int WARN_ON (int) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_send_cmd (struct dw_mci_slot*,int,int ) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u32 dw_mci_prepare_command(struct mmc_host *mmc, struct mmc_command *cmd)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct dw_mci *host = slot->host;
 u32 cmdr;

 cmd->error = -EINPROGRESS;
 cmdr = cmd->opcode;

 if (cmd->opcode == MMC_STOP_TRANSMISSION ||
     cmd->opcode == MMC_GO_IDLE_STATE ||
     cmd->opcode == MMC_GO_INACTIVE_STATE ||
     (cmd->opcode == SD_IO_RW_DIRECT &&
      ((cmd->arg >> 9) & 0x1FFFF) == SDIO_CCCR_ABORT))
  cmdr |= SDMMC_CMD_STOP;
 else if (cmd->opcode != MMC_SEND_STATUS && cmd->data)
  cmdr |= SDMMC_CMD_PRV_DAT_WAIT;

 if (cmd->opcode == SD_SWITCH_VOLTAGE) {
  u32 clk_en_a;


  cmdr |= SDMMC_CMD_VOLT_SWITCH;


  WARN_ON(slot->host->state != STATE_SENDING_CMD);
  slot->host->state = STATE_SENDING_CMD11;
  clk_en_a = mci_readl(host, CLKENA);
  clk_en_a &= ~(SDMMC_CLKEN_LOW_PWR << slot->id);
  mci_writel(host, CLKENA, clk_en_a);
  mci_send_cmd(slot, SDMMC_CMD_UPD_CLK |
        SDMMC_CMD_PRV_DAT_WAIT, 0);
 }

 if (cmd->flags & MMC_RSP_PRESENT) {

  cmdr |= SDMMC_CMD_RESP_EXP;
  if (cmd->flags & MMC_RSP_136)
   cmdr |= SDMMC_CMD_RESP_LONG;
 }

 if (cmd->flags & MMC_RSP_CRC)
  cmdr |= SDMMC_CMD_RESP_CRC;

 if (cmd->data) {
  cmdr |= SDMMC_CMD_DAT_EXP;
  if (cmd->data->flags & MMC_DATA_WRITE)
   cmdr |= SDMMC_CMD_DAT_WR;
 }

 if (!test_bit(DW_MMC_CARD_NO_USE_HOLD, &slot->flags))
  cmdr |= SDMMC_CMD_USE_HOLD_REG;

 return cmdr;
}
