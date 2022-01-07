
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int arg; int flags; int* resp; int opcode; } ;


 int BIT (int) ;
 int ETIMEDOUT ;
 int MMC_CARD_BUSY ;
 int MMC_CMD_BCR ;
 int MMC_RSP_R3 ;
 int MMC_RSP_SPI_R1 ;
 int MMC_SEND_OP_COND ;
 int R1_SPI_IDLE ;
 int mmc_delay (int) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_send_op_cond(struct mmc_host *host, u32 ocr, u32 *rocr)
{
 struct mmc_command cmd = {};
 int i, err = 0;

 cmd.opcode = MMC_SEND_OP_COND;
 cmd.arg = mmc_host_is_spi(host) ? 0 : ocr;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R3 | MMC_CMD_BCR;

 for (i = 100; i; i--) {
  err = mmc_wait_for_cmd(host, &cmd, 0);
  if (err)
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
  if (!ocr && !mmc_host_is_spi(host))
   cmd.arg = cmd.resp[0] | BIT(30);
 }

 if (rocr && !mmc_host_is_spi(host))
  *rocr = cmd.resp[0];

 return err;
}
