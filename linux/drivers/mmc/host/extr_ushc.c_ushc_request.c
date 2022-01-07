
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ushc_data {int clock_freq; TYPE_4__* data_urb; TYPE_4__* cbw_urb; int lock; TYPE_4__* csw_urb; int usb_dev; TYPE_1__* cbw; struct mmc_request* current_req; int flags; } ;
struct mmc_request {TYPE_3__* cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int flags; TYPE_2__* sg; int blksz; } ;
struct TYPE_10__ {int num_sgs; TYPE_2__* sg; } ;
struct TYPE_9__ {int flags; int error; int arg; int opcode; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {int arg; void* block_size; void* cmd_idx; } ;


 int DISCONNECTED ;
 int EINVAL ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int MMC_DATA_READ ;
 int MMC_RSP_136 ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int data_callback ;
 struct ushc_data* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_fill_bulk_urb (TYPE_4__*,int ,int,int *,int ,int ,struct ushc_data*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (TYPE_4__*,int ) ;
 int usb_unlink_urb (TYPE_4__*) ;

__attribute__((used)) static void ushc_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct ushc_data *ushc = mmc_priv(mmc);
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&ushc->lock, flags);

 if (test_bit(DISCONNECTED, &ushc->flags)) {
  ret = -ENODEV;
  goto out;
 }


 if (req->cmd->flags & MMC_RSP_136) {
  ret = -EINVAL;
  goto out;
 }



 if (req->data && ushc->clock_freq < 6000000) {
  ret = -EINVAL;
  goto out;
 }

 ushc->current_req = req;


 ushc->cbw->cmd_idx = cpu_to_le16(req->cmd->opcode);
 if (req->data)
  ushc->cbw->block_size = cpu_to_le16(req->data->blksz);
 else
  ushc->cbw->block_size = 0;
 ushc->cbw->arg = cpu_to_le32(req->cmd->arg);

 ret = usb_submit_urb(ushc->cbw_urb, GFP_ATOMIC);
 if (ret < 0)
  goto out;


 if (req->data) {
  struct mmc_data *data = req->data;
  int pipe;

  if (data->flags & MMC_DATA_READ)
   pipe = usb_rcvbulkpipe(ushc->usb_dev, 6);
  else
   pipe = usb_sndbulkpipe(ushc->usb_dev, 2);

  usb_fill_bulk_urb(ushc->data_urb, ushc->usb_dev, pipe,
      ((void*)0), data->sg->length,
      data_callback, ushc);
  ushc->data_urb->num_sgs = 1;
  ushc->data_urb->sg = data->sg;
  ret = usb_submit_urb(ushc->data_urb, GFP_ATOMIC);
  if (ret < 0)
   goto out;
 }


 ret = usb_submit_urb(ushc->csw_urb, GFP_ATOMIC);

out:
 spin_unlock_irqrestore(&ushc->lock, flags);
 if (ret < 0) {
  usb_unlink_urb(ushc->cbw_urb);
  usb_unlink_urb(ushc->data_urb);
  req->cmd->error = ret;
  mmc_request_done(mmc, req);
 }
}
