
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_command {int arg; int flags; int opcode; } ;
struct TYPE_5__ {int caps; } ;
struct TYPE_4__ {int rca; TYPE_2__* host; } ;


 int MMC_CAP_WAIT_WHILE_BUSY ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_SEND_STATUS ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_hostname (TYPE_2__*) ;
 scalar_t__ mmc_test_busy (struct mmc_command*) ;
 int mmc_wait_for_cmd (TYPE_2__*,struct mmc_command*,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int mmc_test_wait_busy(struct mmc_test_card *test)
{
 int ret, busy;
 struct mmc_command cmd = {};

 busy = 0;
 do {
  memset(&cmd, 0, sizeof(struct mmc_command));

  cmd.opcode = MMC_SEND_STATUS;
  cmd.arg = test->card->rca << 16;
  cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

  ret = mmc_wait_for_cmd(test->card->host, &cmd, 0);
  if (ret)
   break;

  if (!busy && mmc_test_busy(&cmd)) {
   busy = 1;
   if (test->card->host->caps & MMC_CAP_WAIT_WHILE_BUSY)
    pr_info("%s: Warning: Host did not wait for busy state to end.\n",
     mmc_hostname(test->card->host));
  }
 } while (mmc_test_busy(&cmd));

 return ret;
}
