
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct toshsd_host {scalar_t__ data; TYPE_1__* pdev; scalar_t__ ioaddr; struct mmc_command* cmd; } ;
struct mmc_command {int flags; int error; int opcode; scalar_t__ resp; } ;
struct TYPE_2__ {int dev; } ;


 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 scalar_t__ SD_RESPONSE0 ;
 scalar_t__ SD_RESPONSE1 ;
 scalar_t__ SD_RESPONSE2 ;
 scalar_t__ SD_RESPONSE3 ;
 scalar_t__ SD_RESPONSE4 ;
 scalar_t__ SD_RESPONSE5 ;
 scalar_t__ SD_RESPONSE6 ;
 scalar_t__ SD_RESPONSE7 ;
 int dev_dbg (int *,char*,int ,int ,int) ;
 int dev_warn (int *,char*) ;
 int ioread16 (scalar_t__) ;
 int toshsd_finish_request (struct toshsd_host*) ;

__attribute__((used)) static void toshsd_cmd_irq(struct toshsd_host *host)
{
 struct mmc_command *cmd = host->cmd;
 u8 *buf;
 u16 data;

 if (!host->cmd) {
  dev_warn(&host->pdev->dev, "Spurious CMD irq\n");
  return;
 }
 buf = (u8 *)cmd->resp;
 host->cmd = ((void*)0);

 if (cmd->flags & MMC_RSP_PRESENT && cmd->flags & MMC_RSP_136) {

  buf[12] = 0xff;
  data = ioread16(host->ioaddr + SD_RESPONSE0);
  buf[13] = data & 0xff;
  buf[14] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE1);
  buf[15] = data & 0xff;
  buf[8] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE2);
  buf[9] = data & 0xff;
  buf[10] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE3);
  buf[11] = data & 0xff;
  buf[4] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE4);
  buf[5] = data & 0xff;
  buf[6] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE5);
  buf[7] = data & 0xff;
  buf[0] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE6);
  buf[1] = data & 0xff;
  buf[2] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE7);
  buf[3] = data & 0xff;
 } else if (cmd->flags & MMC_RSP_PRESENT) {

  data = ioread16(host->ioaddr + SD_RESPONSE0);
  buf[0] = data & 0xff;
  buf[1] = data >> 8;
  data = ioread16(host->ioaddr + SD_RESPONSE1);
  buf[2] = data & 0xff;
  buf[3] = data >> 8;
 }

 dev_dbg(&host->pdev->dev, "Command IRQ complete %d %d %x\n",
  cmd->opcode, cmd->error, cmd->flags);



 if (host->data)
  return;

 toshsd_finish_request(host);
}
