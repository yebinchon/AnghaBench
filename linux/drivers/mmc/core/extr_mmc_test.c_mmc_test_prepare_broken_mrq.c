
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {TYPE_2__* cmd; int * stop; TYPE_3__* data; } ;
struct TYPE_6__ {int blocks; } ;
struct TYPE_5__ {int arg; int opcode; } ;
struct TYPE_4__ {int rca; } ;


 int MMC_READ_SINGLE_BLOCK ;
 int MMC_SEND_STATUS ;
 int MMC_WRITE_BLOCK ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void mmc_test_prepare_broken_mrq(struct mmc_test_card *test,
 struct mmc_request *mrq, int write)
{
 if (WARN_ON(!mrq || !mrq->cmd || !mrq->data))
  return;

 if (mrq->data->blocks > 1) {
  mrq->cmd->opcode = write ?
   MMC_WRITE_BLOCK : MMC_READ_SINGLE_BLOCK;
  mrq->stop = ((void*)0);
 } else {
  mrq->cmd->opcode = MMC_SEND_STATUS;
  mrq->cmd->arg = test->card->rca << 16;
 }
}
