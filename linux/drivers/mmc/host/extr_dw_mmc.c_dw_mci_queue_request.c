
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct dw_mci_slot {int queue_node; TYPE_1__* mmc; struct mmc_request* mrq; } ;
struct dw_mci {scalar_t__ state; int queue; } ;
struct TYPE_2__ {int class_dev; } ;


 scalar_t__ STATE_IDLE ;
 scalar_t__ STATE_SENDING_CMD ;
 scalar_t__ STATE_WAITING_CMD11_DONE ;
 int dev_vdbg (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*) ;
 int dw_mci_start_request (struct dw_mci*,struct dw_mci_slot*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void dw_mci_queue_request(struct dw_mci *host, struct dw_mci_slot *slot,
     struct mmc_request *mrq)
{
 dev_vdbg(&slot->mmc->class_dev, "queue request: state=%d\n",
   host->state);

 slot->mrq = mrq;

 if (host->state == STATE_WAITING_CMD11_DONE) {
  dev_warn(&slot->mmc->class_dev,
    "Voltage change didn't complete\n");





  host->state = STATE_IDLE;
 }

 if (host->state == STATE_IDLE) {
  host->state = STATE_SENDING_CMD;
  dw_mci_start_request(host, slot);
 } else {
  list_add_tail(&slot->queue_node, &host->queue);
 }
}
