
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_command {int opcode; unsigned long arg; unsigned long busy_timeout; int data; } ;
struct alcor_sdmmc_host {int dev; int timeout_work; struct mmc_command* cmd; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_CMD_17_BYTE_CRC ;
 int AU6601_CMD_6_BYTE_CRC ;
 int AU6601_CMD_6_BYTE_WO_CRC ;
 int AU6601_CMD_NO_RESP ;
 int AU6601_CMD_START_XFER ;
 int AU6601_CMD_STOP_WAIT_RDY ;
 int AU6601_CMD_XFER_CTRL ;
 int AU6601_REG_CMD_ARG ;
 int AU6601_REG_CMD_OPCODE ;





 int alcor_prepare_data (struct alcor_sdmmc_host*,struct mmc_command*) ;
 int alcor_write32be (struct alcor_pci_priv*,unsigned long,int ) ;
 int alcor_write8 (struct alcor_pci_priv*,int,int ) ;
 int dev_dbg (int ,char*,int,unsigned long) ;
 int dev_err (int ,char*,int ,int) ;
 int mmc_from_priv (struct alcor_sdmmc_host*) ;
 int mmc_hostname (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int msecs_to_jiffies (unsigned long) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void alcor_send_cmd(struct alcor_sdmmc_host *host,
      struct mmc_command *cmd, bool set_timeout)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 unsigned long timeout = 0;
 u8 ctrl = 0;

 host->cmd = cmd;
 alcor_prepare_data(host, cmd);

 dev_dbg(host->dev, "send CMD. opcode: 0x%02x, arg; 0x%08x\n",
  cmd->opcode, cmd->arg);
 alcor_write8(priv, cmd->opcode | 0x40, AU6601_REG_CMD_OPCODE);
 alcor_write32be(priv, cmd->arg, AU6601_REG_CMD_ARG);

 switch (mmc_resp_type(cmd)) {
 case 132:
  ctrl = AU6601_CMD_NO_RESP;
  break;
 case 131:
  ctrl = AU6601_CMD_6_BYTE_CRC;
  break;
 case 130:
  ctrl = AU6601_CMD_6_BYTE_CRC | AU6601_CMD_STOP_WAIT_RDY;
  break;
 case 129:
  ctrl = AU6601_CMD_17_BYTE_CRC;
  break;
 case 128:
  ctrl = AU6601_CMD_6_BYTE_WO_CRC;
  break;
 default:
  dev_err(host->dev, "%s: cmd->flag (0x%02x) is not valid\n",
   mmc_hostname(mmc_from_priv(host)), mmc_resp_type(cmd));
  break;
 }

 if (set_timeout) {
  if (!cmd->data && cmd->busy_timeout)
   timeout = cmd->busy_timeout;
  else
   timeout = 10000;

  schedule_delayed_work(&host->timeout_work,
          msecs_to_jiffies(timeout));
 }

 dev_dbg(host->dev, "xfer ctrl: 0x%02x; timeout: %lu\n", ctrl, timeout);
 alcor_write8(priv, ctrl | AU6601_CMD_START_XFER,
     AU6601_CMD_XFER_CTRL);
}
