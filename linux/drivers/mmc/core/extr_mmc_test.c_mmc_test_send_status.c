
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_command {int arg; int flags; int opcode; } ;
struct TYPE_2__ {int rca; int host; } ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R2 ;
 int MMC_SEND_STATUS ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_host_is_spi (int ) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

__attribute__((used)) static int mmc_test_send_status(struct mmc_test_card *test,
    struct mmc_command *cmd)
{
 memset(cmd, 0, sizeof(*cmd));

 cmd->opcode = MMC_SEND_STATUS;
 if (!mmc_host_is_spi(test->card->host))
  cmd->arg = test->card->rca << 16;
 cmd->flags = MMC_RSP_SPI_R2 | MMC_RSP_R1 | MMC_CMD_AC;

 return mmc_wait_for_cmd(test->card->host, cmd, 0);
}
