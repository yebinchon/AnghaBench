
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_test_card {struct mmc_card* card; } ;
struct mmc_request {TYPE_2__* sbc; TYPE_1__* cmd; } ;
struct mmc_card {int quirks; int host; } ;
struct TYPE_4__ {unsigned int arg; int flags; int opcode; } ;
struct TYPE_3__ {int opcode; } ;


 int MMC_CMD_AC ;
 int MMC_QUIRK_BLK_NO_CMD23 ;
 int MMC_RSP_R1 ;
 int MMC_SET_BLOCK_COUNT ;
 int mmc_host_cmd23 (int ) ;
 int mmc_op_multi (int ) ;
 int mmc_test_card_cmd23 (struct mmc_card*) ;

__attribute__((used)) static void mmc_test_prepare_sbc(struct mmc_test_card *test,
     struct mmc_request *mrq, unsigned int blocks)
{
 struct mmc_card *card = test->card;

 if (!mrq->sbc || !mmc_host_cmd23(card->host) ||
     !mmc_test_card_cmd23(card) || !mmc_op_multi(mrq->cmd->opcode) ||
     (card->quirks & MMC_QUIRK_BLK_NO_CMD23)) {
  mrq->sbc = ((void*)0);
  return;
 }

 mrq->sbc->opcode = MMC_SET_BLOCK_COUNT;
 mrq->sbc->arg = blocks;
 mrq->sbc->flags = MMC_RSP_R1 | MMC_CMD_AC;
}
