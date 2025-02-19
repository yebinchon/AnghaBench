
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {int quirks2; int flags; int data; } ;
struct mmc_data {int blocks; int flags; } ;
struct mmc_command {scalar_t__ opcode; TYPE_2__* mrq; struct mmc_data* data; } ;
struct TYPE_4__ {TYPE_1__* sbc; } ;
struct TYPE_3__ {int arg; } ;


 int MMC_DATA_READ ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int SDHCI_ARGUMENT2 ;
 int SDHCI_AUTO_CMD23 ;
 int SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD ;
 int SDHCI_QUIRK2_SUPPORT_SINGLE ;
 int SDHCI_REQ_USE_DMA ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_TRNS_AUTO_CMD12 ;
 int SDHCI_TRNS_AUTO_CMD23 ;
 int SDHCI_TRNS_BLK_CNT_EN ;
 int SDHCI_TRNS_DMA ;
 int SDHCI_TRNS_MULTI ;
 int SDHCI_TRNS_READ ;
 int WARN_ON (int) ;
 scalar_t__ mmc_op_multi (scalar_t__) ;
 int sdhci_auto_cmd_select (struct sdhci_host*,struct mmc_command*,int*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_set_transfer_mode(struct sdhci_host *host,
 struct mmc_command *cmd)
{
 u16 mode = 0;
 struct mmc_data *data = cmd->data;

 if (data == ((void*)0)) {
  if (host->quirks2 &
   SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD) {

   if (cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200)
    sdhci_writew(host, 0x0, SDHCI_TRANSFER_MODE);
  } else {

   mode = sdhci_readw(host, SDHCI_TRANSFER_MODE);
   sdhci_writew(host, mode & ~(SDHCI_TRNS_AUTO_CMD12 |
    SDHCI_TRNS_AUTO_CMD23), SDHCI_TRANSFER_MODE);
  }
  return;
 }

 WARN_ON(!host->data);

 if (!(host->quirks2 & SDHCI_QUIRK2_SUPPORT_SINGLE))
  mode = SDHCI_TRNS_BLK_CNT_EN;

 if (mmc_op_multi(cmd->opcode) || data->blocks > 1) {
  mode = SDHCI_TRNS_BLK_CNT_EN | SDHCI_TRNS_MULTI;
  sdhci_auto_cmd_select(host, cmd, &mode);
  if (cmd->mrq->sbc && (host->flags & SDHCI_AUTO_CMD23))
   sdhci_writel(host, cmd->mrq->sbc->arg, SDHCI_ARGUMENT2);
 }

 if (data->flags & MMC_DATA_READ)
  mode |= SDHCI_TRNS_READ;
 if (host->flags & SDHCI_REQ_USE_DMA)
  mode |= SDHCI_TRNS_DMA;

 sdhci_writew(host, mode, SDHCI_TRANSFER_MODE);
}
