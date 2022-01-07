
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_2__* mrq; TYPE_1__* pdata; struct mmc_command* cmd; struct mmc_data* data; } ;
struct mmc_data {int blocks; int flags; } ;
struct mmc_command {int opcode; int arg; } ;
struct TYPE_4__ {scalar_t__ sbc; } ;
struct TYPE_3__ {int flags; } ;


 int CTL_ARG_REG ;
 int CTL_SD_CMD ;
 int CTL_STOP_INTERNAL_ACTION ;
 int DATA_PRESENT ;
 int EINVAL ;
 int MMC_DATA_READ ;






 int NO_CMD12_ISSUE ;
 int RESP_NONE ;
 int RESP_R1 ;
 int RESP_R1B ;
 int RESP_R2 ;
 int RESP_R3 ;
 int SD_IO_RW_EXTENDED ;
 int TMIO_MASK_CMD ;
 int TMIO_MMC_HAVE_CMD12_CTRL ;
 int TMIO_STOP_SEC ;
 int TRANSFER_MULTI ;
 int TRANSFER_READ ;
 int mmc_resp_type (struct mmc_command*) ;
 int pr_debug (char*,int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_ctrl_write32_as_16_and_16 (struct tmio_mmc_host*,int ,int ) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static int tmio_mmc_start_command(struct tmio_mmc_host *host,
      struct mmc_command *cmd)
{
 struct mmc_data *data = host->data;
 int c = cmd->opcode;

 switch (mmc_resp_type(cmd)) {
 case 133: c |= RESP_NONE; break;
 case 132:
 case 130:
      c |= RESP_R1; break;
 case 131: c |= RESP_R1B; break;
 case 129: c |= RESP_R2; break;
 case 128: c |= RESP_R3; break;
 default:
  pr_debug("Unknown response type %d\n", mmc_resp_type(cmd));
  return -EINVAL;
 }

 host->cmd = cmd;






 if (data) {
  c |= DATA_PRESENT;
  if (data->blocks > 1) {
   sd_ctrl_write16(host, CTL_STOP_INTERNAL_ACTION, TMIO_STOP_SEC);
   c |= TRANSFER_MULTI;





   if ((host->pdata->flags & TMIO_MMC_HAVE_CMD12_CTRL) &&
       (cmd->opcode == SD_IO_RW_EXTENDED || host->mrq->sbc))
    c |= NO_CMD12_ISSUE;
  }
  if (data->flags & MMC_DATA_READ)
   c |= TRANSFER_READ;
 }

 tmio_mmc_enable_mmc_irqs(host, TMIO_MASK_CMD);


 sd_ctrl_write32_as_16_and_16(host, CTL_ARG_REG, cmd->arg);
 sd_ctrl_write16(host, CTL_SD_CMD, c);

 return 0;
}
