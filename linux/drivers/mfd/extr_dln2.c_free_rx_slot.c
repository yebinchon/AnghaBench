
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct urb {int dummy; } ;
struct dln2_rx_context {int in_use; int done; struct urb* urb; } ;
struct dln2_mod_rx_slots {int wq; int lock; struct dln2_rx_context* slots; int bmap; } ;
struct dln2_dev {TYPE_1__* interface; struct dln2_mod_rx_slots* mod_rx_slots; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GFP_KERNEL ;
 int clear_bit (int,int ) ;
 int dev_err (struct device*,char*,int) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void free_rx_slot(struct dln2_dev *dln2, u16 handle, int slot)
{
 struct dln2_mod_rx_slots *rxs;
 struct urb *urb = ((void*)0);
 unsigned long flags;
 struct dln2_rx_context *rxc;

 rxs = &dln2->mod_rx_slots[handle];

 spin_lock_irqsave(&rxs->lock, flags);

 clear_bit(slot, rxs->bmap);

 rxc = &rxs->slots[slot];
 rxc->in_use = 0;
 urb = rxc->urb;
 rxc->urb = ((void*)0);
 reinit_completion(&rxc->done);

 spin_unlock_irqrestore(&rxs->lock, flags);

 if (urb) {
  int err;
  struct device *dev = &dln2->interface->dev;

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err < 0)
   dev_err(dev, "failed to resubmit RX URB: %d\n", err);
 }

 wake_up_interruptible(&rxs->wq);
}
