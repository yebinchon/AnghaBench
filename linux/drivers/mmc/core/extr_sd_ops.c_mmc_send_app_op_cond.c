
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int arg; int flags; int* resp; int opcode; } ;


 int ETIMEDOUT ;
 int MMC_CARD_BUSY ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R3 ;
 int MMC_RSP_SPI_R1 ;
 int R1_SPI_IDLE ;
 int SD_APP_OP_COND ;
 int mmc_delay (int) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_wait_for_app_cmd (struct mmc_host*,int *,struct mmc_command*) ;
 int pr_err (char*,int ) ;

int mmc_send_app_op_cond(struct mmc_host *host, u32 ocr, u32 *rocr)
{
 struct mmc_command cmd = {};
 int i, err = 0;

 cmd.opcode = SD_APP_OP_COND;
 if (mmc_host_is_spi(host))
  cmd.arg = ocr & (1 << 30);
 else
  cmd.arg = ocr;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R3 | MMC_CMD_BCR;

 for (i = 100; i; i--) {
  err = mmc_wait_for_app_cmd(host, ((void*)0), &cmd);
  if (err)
   break;


  if (ocr == 0)
   break;


  if (mmc_host_is_spi(host)) {
   if (!(cmd.resp[0] & R1_SPI_IDLE))
    break;
  } else {
   if (cmd.resp[0] & MMC_CARD_BUSY)
    break;
  }

  err = -ETIMEDOUT;

  mmc_delay(10);
 }

 if (!i)
  pr_err("%s: card never left busy state\n", mmc_hostname(host));

 if (rocr && !mmc_host_is_spi(host))
  *rocr = cmd.resp[0];

 return err;
}
