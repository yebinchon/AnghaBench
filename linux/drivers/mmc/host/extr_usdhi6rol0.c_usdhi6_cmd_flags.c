
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usdhi6_host {int app_cmd; int mmc; struct mmc_request* mrq; } ;
struct mmc_request {int stop; TYPE_1__* data; struct mmc_command* cmd; } ;
struct mmc_command {int opcode; } ;
struct TYPE_2__ {int flags; int blocks; } ;


 int EINVAL ;
 int MMC_DATA_READ ;
 scalar_t__ MMC_READ_MULTIPLE_BLOCK ;





 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 scalar_t__ SD_IO_RW_EXTENDED ;
 int USDHI6_SD_CMD_APP ;
 int USDHI6_SD_CMD_CMD12_AUTO_OFF ;
 int USDHI6_SD_CMD_DATA ;
 int USDHI6_SD_CMD_MODE_RSP_NONE ;
 int USDHI6_SD_CMD_MODE_RSP_R1 ;
 int USDHI6_SD_CMD_MODE_RSP_R1B ;
 int USDHI6_SD_CMD_MODE_RSP_R2 ;
 int USDHI6_SD_CMD_MODE_RSP_R3 ;
 int USDHI6_SD_CMD_MULTI ;
 int USDHI6_SD_CMD_READ ;
 int dev_warn (int ,char*,int) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;

__attribute__((used)) static int usdhi6_cmd_flags(struct usdhi6_host *host)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_command *cmd = mrq->cmd;
 u16 opc = cmd->opcode;

 if (host->app_cmd) {
  host->app_cmd = 0;
  opc |= USDHI6_SD_CMD_APP;
 }

 if (mrq->data) {
  opc |= USDHI6_SD_CMD_DATA;

  if (mrq->data->flags & MMC_DATA_READ)
   opc |= USDHI6_SD_CMD_READ;

  if (cmd->opcode == MMC_READ_MULTIPLE_BLOCK ||
      cmd->opcode == MMC_WRITE_MULTIPLE_BLOCK ||
      (cmd->opcode == SD_IO_RW_EXTENDED &&
       mrq->data->blocks > 1)) {
   opc |= USDHI6_SD_CMD_MULTI;
   if (!mrq->stop)
    opc |= USDHI6_SD_CMD_CMD12_AUTO_OFF;
  }

  switch (mmc_resp_type(cmd)) {
  case 132:
   opc |= USDHI6_SD_CMD_MODE_RSP_NONE;
   break;
  case 131:
   opc |= USDHI6_SD_CMD_MODE_RSP_R1;
   break;
  case 130:
   opc |= USDHI6_SD_CMD_MODE_RSP_R1B;
   break;
  case 129:
   opc |= USDHI6_SD_CMD_MODE_RSP_R2;
   break;
  case 128:
   opc |= USDHI6_SD_CMD_MODE_RSP_R3;
   break;
  default:
   dev_warn(mmc_dev(host->mmc),
     "Unknown response type %d\n",
     mmc_resp_type(cmd));
   return -EINVAL;
  }
 }

 return opc;
}
