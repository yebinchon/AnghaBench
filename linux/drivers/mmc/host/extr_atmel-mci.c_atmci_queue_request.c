
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct atmel_mci_slot {int queue_node; struct mmc_request* mrq; TYPE_2__* mmc; } ;
struct atmel_mci {scalar_t__ state; int lock; int queue; TYPE_1__* pdev; } ;
struct TYPE_4__ {int class_dev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ STATE_IDLE ;
 scalar_t__ STATE_SENDING_CMD ;
 int atmci_start_request (struct atmel_mci*,struct atmel_mci_slot*) ;
 int dev_dbg (int *,char*) ;
 int dev_vdbg (int *,char*,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void atmci_queue_request(struct atmel_mci *host,
  struct atmel_mci_slot *slot, struct mmc_request *mrq)
{
 dev_vdbg(&slot->mmc->class_dev, "queue request: state=%d\n",
   host->state);

 spin_lock_bh(&host->lock);
 slot->mrq = mrq;
 if (host->state == STATE_IDLE) {
  host->state = STATE_SENDING_CMD;
  atmci_start_request(host, slot);
 } else {
  dev_dbg(&host->pdev->dev, "queue request\n");
  list_add_tail(&slot->queue_node, &host->queue);
 }
 spin_unlock_bh(&host->lock);
}
