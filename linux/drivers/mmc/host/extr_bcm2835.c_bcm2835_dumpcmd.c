
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_command {int error; int * resp; int flags; int arg; int opcode; } ;
struct device {int dummy; } ;
struct bcm2835_host {struct mmc_command* cmd; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_dbg (struct device*,char*,char,char const*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bcm2835_dumpcmd(struct bcm2835_host *host, struct mmc_command *cmd,
       const char *label)
{
 struct device *dev = &host->pdev->dev;

 if (!cmd)
  return;

 dev_dbg(dev, "%c%s op %d arg 0x%x flags 0x%x - resp %08x %08x %08x %08x, err %d\n",
  (cmd == host->cmd) ? '>' : ' ',
  label, cmd->opcode, cmd->arg, cmd->flags,
  cmd->resp[0], cmd->resp[1], cmd->resp[2], cmd->resp[3],
  cmd->error);
}
