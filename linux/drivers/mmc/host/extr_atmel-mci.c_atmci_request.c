
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {TYPE_2__* cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blocks; int blksz; } ;
struct atmel_mci_slot {int flags; int mrq; struct atmel_mci* host; } ;
struct atmel_mci {TYPE_1__* pdev; } ;
struct TYPE_4__ {int error; int opcode; } ;
struct TYPE_3__ {int dev; } ;


 int ATMCI_CARD_PRESENT ;
 int EINVAL ;
 int ENOMEDIUM ;
 int WARN_ON (int ) ;
 int atmci_queue_request (struct atmel_mci*,struct atmel_mci_slot*,struct mmc_request*) ;
 int dev_dbg (int *,char*,int ) ;
 struct atmel_mci_slot* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void atmci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct atmel_mci_slot *slot = mmc_priv(mmc);
 struct atmel_mci *host = slot->host;
 struct mmc_data *data;

 WARN_ON(slot->mrq);
 dev_dbg(&host->pdev->dev, "MRQ: cmd %u\n", mrq->cmd->opcode);
 if (!test_bit(ATMCI_CARD_PRESENT, &slot->flags)) {
  mrq->cmd->error = -ENOMEDIUM;
  mmc_request_done(mmc, mrq);
  return;
 }


 data = mrq->data;
 if (data && data->blocks > 1 && data->blksz & 3) {
  mrq->cmd->error = -EINVAL;
  mmc_request_done(mmc, mrq);
 }

 atmci_queue_request(host, slot, mrq);
}
