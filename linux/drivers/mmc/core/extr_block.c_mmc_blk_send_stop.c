
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; unsigned int busy_timeout; int opcode; } ;
struct mmc_card {int host; } ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int MMC_STOP_TRANSMISSION ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int) ;

__attribute__((used)) static int mmc_blk_send_stop(struct mmc_card *card, unsigned int timeout)
{
 struct mmc_command cmd = {
  .opcode = MMC_STOP_TRANSMISSION,
  .flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC,

  .busy_timeout = timeout,
 };

 return mmc_wait_for_cmd(card->host, &cmd, 5);
}
