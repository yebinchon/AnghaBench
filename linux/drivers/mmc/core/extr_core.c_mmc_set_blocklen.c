
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {unsigned int arg; int flags; int opcode; } ;
struct mmc_card {int host; } ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int MMC_SET_BLOCKLEN ;
 scalar_t__ mmc_card_blockaddr (struct mmc_card*) ;
 scalar_t__ mmc_card_ddr52 (struct mmc_card*) ;
 scalar_t__ mmc_card_hs400 (struct mmc_card*) ;
 scalar_t__ mmc_card_hs400es (struct mmc_card*) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int) ;

int mmc_set_blocklen(struct mmc_card *card, unsigned int blocklen)
{
 struct mmc_command cmd = {};

 if (mmc_card_blockaddr(card) || mmc_card_ddr52(card) ||
     mmc_card_hs400(card) || mmc_card_hs400es(card))
  return 0;

 cmd.opcode = MMC_SET_BLOCKLEN;
 cmd.arg = blocklen;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
 return mmc_wait_for_cmd(card->host, &cmd, 5);
}
